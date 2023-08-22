from flask import Flask, render_template, request, redirect, url_for, flash
from flask_login import LoginManager, login_user, logout_user, UserMixin

app = Flask(__name__)
app.secret_key = 'secret_key'

login_manager = LoginManager()
login_manager.init_app(app)


class User(UserMixin):
    def __init__(self, id):
        self.id = id
        self.name = 'user' + str(id)
        self.password = self.name + '_secret'

    def __repr__(self):
        return f'<User {self.name}>'


users = [User(id) for id in range(1, 6)]


@login_manager.user_loader
def load_user(user_id):
    for user in users:
        if user.id == int(user_id):
            return user
    return None


@app.route('/')
def home():
    return render_template('home.html')


@app.route('/login', methods=['GET', 'POST'])
def login():
    if request.method == 'POST':
        username = request.form['username']
        password = request.form['password']
        for user in users:
            if user.name == username and user.password == password:
                login_user(user)
                flash('Login Successful')
                return redirect(url_for('home'))
        flash('Login Failed')
    return render_template('login.html')


@app.route('/logout')
@login
def logout():
    logout_user()
    flash('Logout Successful')
    return redirect(url_for('home'))


if __name__ == '__main__':
    app.run()
