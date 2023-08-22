"""
This file has all the APIs related to car
"""
import sys
from pathlib import Path
from flask import Response, request
from flask_restful import Resource
from car_rental.hypermedia import CarsHypermedia
from car_rental.db_util import query_db, execute_db
from car_rental import cache
from car_rental import token_required

sys.path.append(str(Path(__file__).resolve().parent.parent.parent))

MASON = "application/vnd.mason+json"


class CarCollection(Resource):
    """
    Represents the collection of all cars in the system. This resource allows for retrieving all cars or adding a new
    car to the collection.

    Attributes:
        N/A.

    Methods:
        get(): Retrieves a list of all cars from database and returns a JSON response of MASON media type.
        post(): Inserts a new car to the database based on JSON data in the request body.
    """

    def __init__(self):
        self.last_row_id = None
        self.insert_statement = None
        self.car = None
        self.sql = None

    @cache.cached(timeout=60, key_prefix="cars_cache")
    # @token_required
    def get(self):
        """
        Retrieves a list of all cars from database and returns a JSON response of MASON media type.

        Args:
            N/A.

        Returns:
            response (Response): http response containing list of cars as JSON-encoded string with MASON media type.
            The status code of response is `200`(OK).

        Raises:
            None.
        """
        self.sql = "SELECT c.*,IFNULL(r.status,'available') as status FROM car c LEFT JOIN rental r ON c.id=r.car_id;"
        self.car = query_db(self.sql)

        chy = CarsHypermedia()
        car_json = chy.jsonify(self.car)
        return Response(car_json, 200, mimetype=MASON)

    def post(self):
        """
        Inserts a new car to the database based on JSON data in the request body.

        Args:
            N/A.

        Returns:
            response (Response): the http request indicating success of the operation if response is `201`(Created) if
            the record was successfully created. The response will also include the new added car item in json format, this
            can be used to verify if the inserted data is the same as the post object.
            Or the status code is `400`(Bad request) and the response body
            contains error message in JSON format.

        Raises:
            N/A.
        """
        if not request.json:
            return (
                400, "Bad Request",
                "Request body must contain JSON data"
            )
        self.insert_statement = "INSERT INTO car ( name, rent_price, year, model, engine_number, " \
                                "cylinder_count, body_color, mfg_year, seating_capacity, horse_power_cc, maker_name)" \
                                " VALUES ('{name}', '{rent_price}', '{year}', '{model}', '{engine_number}', '{cylinder_count}'," \
                                " '{body_color}', '{mfg_year}', '{seating_capacity}', '{horse_power_cc}', '{maker_name}');"

        self.insert_statement = self.insert_statement.format(**request.json)
        print(self.insert_statement)
        # execute the query and get the id of the new added car
        self.last_row_id = execute_db(self.insert_statement)

        # get the json object of new car using its id and return the json object with code 201
        response = CarItem().get(self.last_row_id)
        print(response.data)
        cache.delete('cars_cache')
        return Response(response.data, 201, mimetype=MASON)
        # return response


class CarItem(Resource):
    """
    Represents a cars in the system. This resource allows for retrieving a cars or deleting a car.
    Attributes:
        N/A.
    Methods:
        get(): Retrieves a list of all cars from database and returns a JSON response of MASON media type.
        delete(): Inserts a new car to the database based on JSON data in the request body.
    """

    def __init__(self):
        self.car_id = None
        self.sql = None

    # @cache.cached(timeout=60, key_prefix="car_cache_{car_id}")
    def get(self, car_id):
        """
        Retrieves car record with the specified car id from database and returns in JSON format.

        Args:
            car_id:car id of the record in database to be retrieved.

        Returns:
            response (Response): the http request indicating success of the operation if response is `200`(OK) if
            the record was successfully retrieved, Otherwise the status code is `415`(Unsupported Media Type) and
            the response body contains error message in JSON format.

        Raises:
            N/A.
        """
        print(f"Get car {car_id}")

        self.sql = f"SELECT c.*,IFNULL(r.status,'available') as status FROM car c LEFT JOIN rental r ON c.id=r.car_id where c.id={car_id};"

        car = query_db(self.sql)
        chy = CarsHypermedia()
        car_json = chy.jsonify(car)
        return Response(car_json, 200, mimetype=MASON)
        # return car_json

    def delete(self, car_id):
        """
        Deletes the specified car record from database.

        Args:
            car_id:car id of the record in database to be deleted.

        Returns: response (Response): the http request indicating success of the operation if response is `204`(No
        Content) if the record was successfully deleted. Otherwise, the status code is `404`(Not Found) if the
        specified id is not found and the response body contains error message in JSON format.

        Raises:
            N/A.
        """
        print(f"Delete car {car_id}")
        self.sql = f"DELETE FROM car WHERE car.id = {car_id};"
        execute_db(self.sql)
        cache.delete('cars_cache')
        return Response(status=204)

    def put(self, car_id):
        """
        updates a new car to the database based on JSON data in the request body.

        Args:
            car_id:car id of the record in database to be updated.

        Returns:
            response (Response): the http request indicating success of the operation if response is `204`(updated) if
            the record was successfully updated. The response will also include the new added car item in json format, this
            can be used to verify if the inserted data is the same as the post object.
            Or the status code is `400`(Bad request) and the response body
            contains error message in JSON format.

        Raises:
            N/A.
        """
        if not request.json:
            return (
                415, "Bad Request",
                "Request body must contain JSON data"
            )

        self.insert_statement = f"""
                   UPDATE car
                   SET name = '{request.json['name']}',
                       rent_price='{request.json['rent_price']}',
                       year ='{request.json['year']}',
                       model='{request.json['model']}',
                       engine_number='{request.json['engine_number']}',
                       cylinder_count='{request.json['cylinder_count']}',
                       body_color ='{request.json['body_color']}',
                       mfg_year='{request.json['mfg_year']}',
                       seating_capacity='{request.json['seating_capacity']}',
                       horse_power_cc='{request.json['horse_power_cc']}',
                       maker_name='{request.json['maker_name']}'
                   WHERE id='{car_id}';
           """

        # execute the query and get the id of the new added car
        self.last_row_id = execute_db(self.insert_statement)

        # get the json object of new car using its id and return the json object with code 201
        response = CarItem().get(self.last_row_id)
        cache.delete('cars_cache')
        return Response(response.data, 204, mimetype=MASON)
        # return response


class CarItemB(Resource):
    """
    Represents a cars in the system. This resource allows for retrieving a cars of customer.
    Attributes:
        N/A.
    Methods:
        get(): Retrieves a list of all cars from database and returns a JSON response of MASON media type.
    """

    def __init__(self):
        self.sql = None

    def get(self, car_id, customer_id):
        """
        Retrieves car record of customer with the specified car id from database and returns in JSON format.

        Args:
            customer_id: customer id of the record in database
            car_id:car id of the record in database to be retrieved.

        Returns:
            response (Response): the http request indicating success of the operation if response is `200`(OK) if
            the record was successfully retrieved, Otherwise the status code is `415`(Unsupported Media Type) and
            the response body contains error message in JSON format.

        Raises:
            N/A.
        """
        self.sql = f"SELECT * FROM car where id = (SELECT car_id FROM customer WHERE {customer_id}=id && {car_id}=car_id);"

        car = query_db(self.sql)
        chy = CarsHypermedia()
        car_json = chy.jsonify(car)
        return Response(car_json, 200, mimetype=MASON)
