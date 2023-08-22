FROM python:3.9

WORKDIR /auto_showroom

COPY . .

RUN pip install --no-cache-dir -r requirements.txt

ENV FLASK_APP=car_rental/app.py
#ENV FLASK_DEBUG=1
ENV PYTHONUNBUFFERED=1

CMD ["flask", "run", "--host=0.0.0.0"]

#docker build -t my-flask-app .
#docker run -p 5000:5000 my-flask-app