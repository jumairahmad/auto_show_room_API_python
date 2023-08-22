"""
This file is starting point for our application
"""

import sys
from pathlib import Path
from flask import Blueprint
from flask_restful import Api
from flasgger import Swagger

sys.path.append(str(Path(__file__).resolve().parent.parent))
from car_rental.resources.car import CarCollection, CarItem, CarItemB
from car_rental.resources.rental import RentalCollection, RentalItem, RentalStatus
from car_rental.resources.customer import CustomerCollection, CustomerItem, CarByCustomers

from car_rental import app

api_bp = Blueprint("api", __name__, url_prefix="/api")  # create a blueprint for apis
api = Api(api_bp)
swagger = Swagger(app, template_file="swagger.yml")
app.register_blueprint(api_bp)  # register the blueprint

api.add_resource(CustomerCollection, "/customers/")
api.add_resource(CarCollection, "/cars/")

api.add_resource(CarItem, "/car/<car_id>/")
api.add_resource(CarItemB, "/car/<car_id>/<customer_id>/")
api.add_resource(CustomerItem, "/customer/<customer_id>/")
api.add_resource(CarByCustomers, "/customer/cars/<customer_id>/")
api.add_resource(RentalCollection, "/rentals/")
api.add_resource(RentalItem, "/rental/<rental_id>/")
api.add_resource(RentalStatus, "/rental/<car_id>/")

if __name__ == '__main__':
    app.run()
