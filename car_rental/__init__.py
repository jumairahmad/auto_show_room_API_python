from flask import Flask, jsonify, request, render_template, make_response, Response
from flask_cors import CORS
from flask_caching import Cache
from datetime import datetime, timedelta
from functools import wraps
import jwt

MASON = "application/vnd.mason+json"


def create_app():
    """
    Creates a new Flask Application
    Returns :
        A new Flask Instance.
    Raises:
        Nothing
    """
    new_app = Flask(__name__, instance_relative_config=True)
    new_app.config["CACHE_TYPE"] = "FileSystemCache"
    new_app.config["CACHE_DIR"] = "cache"
    new_app.config['SECRET_KEY'] = 'YOU_SECRET_KEY'
    new_app.config["SWAGGER"] = {
        "title": "Car Rental API",
        "openapi": "3.0.3",
        "uiversion": 3,
        "doc_dir": "./apidocs",
    }
    return new_app


def token_required(func):
    """
    decorator factory which invoks update_wrapper() method and passes decorated function as an argument
    """

    @wraps(func)
    def decorated(*args, **kwargs):
        #Get the token that is sent in the header
        token = request.headers.get('token')
        if not token:
            return Response({'Alert!': 'Token is missing!'}, 401)

        try:

            data = jwt.decode(token, app.config['SECRET_KEY'], algorithms=["HS256"])
            print(f"Token is {data}")
            exp_time = data['expiration']
            current_time = int(datetime.utcnow().timestamp())
            if current_time > exp_time:
                return Response({'Message': 'Token has expired'},401)
        except Exception as ex:
            return Response({'Message': f'Invalid token |{ex}|'},403)
        return func(*args, **kwargs)

    return decorated


app = create_app()
cache = Cache(app)
CORS(app)


@app.route('/')
def home():
    return render_template('login.html')


@app.route('/login', methods=['POST'])
def login():
    if request.form['username'] and request.form['password'] == '1234':
        exp_time = datetime.utcnow() + timedelta(seconds=86400)
        print(f"Token Expire Time is {exp_time}")
        token = jwt.encode({
            'user': request.form['username'],
            # don't foget to wrap it in str function, otherwise it won't work [ i struggled with this one! ]
            'expiration': int(exp_time.timestamp())
        },
            app.config['SECRET_KEY'], algorithm="HS256")
        return jsonify({'token': token, 'Note': 'Your Token Will Expire In 1 Day'})
    else:
        return make_response('Unable to verify', 403, {'WWW-Authenticate': 'Basic realm: "Authentication Failed "'})
