"""
This file has all the APIs related to rental
"""

from flask import Response, request
from flask_restful import Resource
import car_rental.db_util as md
from car_rental.hypermedia import RentalHypermedia
from car_rental import cache

MASON = "application/vnd.mason+json"


class RentalCollection(Resource):
    """
    Represents the collection of all rental cars in the system. This resource allows for retrieving all rental cars or adding a new
    rental car to the collection.

    Attributes:
        N/A.

    Methods:
        get(): Retrieves a list of all rental cars from database and returns a JSON response of MASON media type.
        post(): Inserts a new rental car to the database based on JSON data in the request body.
    """

    @cache.cached(timeout=10, key_prefix="rentals_cache")
    def get(self):
        """
        Retrieves the list of all rented cars from the database .

        Args:
            N/A.

        Returns:
            response (Response): the http request indicating success of the operation if response is `200`(OK) if
            the list of rented cars was successfully retrieved.

        Raises:
            N/A.

        """
        sql = """SELECT rental.*
                FROM rental
                WHERE rental.status = 'rented';"""
        rental = md.query_db(sql)
        rental_hypmd=RentalHypermedia()
        rental_json=rental_hypmd.jsonify(rental)
        return Response(rental_json, 200, mimetype=MASON)

    def post(self):
        """
        Inserts a new rental record to the database .

        Args:
            N/A.

        Returns:
            response (Response): the http request indicating success of the operation if response is `201`(Created) if
            the record was successfully created, Otherwise the status code is `400`(Bad request) and the response body
            contains error message in JSON format.

        Raises:
            N/A.
        """

        if not request.json:
            return (
                400, "Bad Request",
                "Request body must contain JSON data"
            )
        insert_statement = "INSERT INTO rental (customer_id, car_id, status, from_date, to_date, available_from) VALUES" \
                           " ('{customer_id}', '{car_id}', '{status}', '{from_date}', '{to_date}', '{available_from}')"
        insert_statement = insert_statement.format(**request.json)
        last_row_id = md.execute_db(insert_statement)

        response = RentalItem().get(last_row_id)

        return Response(response.data, 201, mimetype=MASON)


class RentalItem(Resource):
    """
    Represents a rental cars in the system. This resource allows for retrieving a rental cars or deleting a rental car.
    Attributes:
        N/A.
    Methods:
        get(): Retrieves a list of all rental cars from database and returns a JSON response of MASON media type.
        delete(): Inserts a new rental car to the database based on JSON data in the request body.
    """
    def __init__(self):
        self.sql = None

    @cache.cached(timeout=10, key_prefix="rental_cache")
    def get(self, rental_id):
        """
         Retrieves rental record with the specified  id from database and returns in JSON format.
         Args:
             rental_id: rental_id of the record in database to be retrieved.
         Returns:
             response (Response): the http request indicating success of the operation if response is `200`(OK) if
             the record was successfully retrieved, Otherwise the status code is `415`(Unsupported Media Type) and
             the response body contains error message in JSON format.
         Raises:
             N/A.
         """

        self.sql = f"SELECT * FROM rental where rental.id = {rental_id};"
        rental = md.query_db(self.sql)
        rental_hypmd=RentalHypermedia()
        rental_json=rental_hypmd.jsonify(rental)

        return Response(rental_json, 200, mimetype=MASON)

    def delete(self, rental_id):
        """
         Deletes the specified rental record from database.

         Args:
             rental_id: rental_id of the record in database to be deleted.

         Returns: response (Response): the http request indicating success of the operation if response is `204`(No
         Content) if the record was successfully deleted. Otherwise, the status code is `404`(Not Found) if the
         specified id is not found and the response body contains error message in JSON format.

         Raises:
             N/A.
         """
        print(f"Delete car {rental_id}")
        self.sql = f"DELETE FROM rental WHERE rental.id = {rental_id};"
        md.execute_db(self.sql)
        return Response(status=204)

    def put(self, rental_id):
        """
        Updates existing  rental record in database and returns response in JSON format.

        Args:
            rental_id: rental id which contains rental id to update.

        Returns:
            response (Response): the http request indicating success of the operation if response is `204`(No Content)
            if the record was successfully updated, Otherwise the status code is `415`(Unsupported Media Type) and
            the response body contains error message in JSON format.

        Raises:
            N/A.
        """

        if not request.json:
            return (
                415, "Unsupported media type",
                "Requests must be JSON"
            )
        # id = request.json["id"]
        available_from = request.json["available_from"]
        car_id = request.json["car_id"]
        customer_id = request.json["customer_id"]
        from_date = request.json["from_date"]
        status = request.json["status"]
        to_date = request.json["to_date"]

        sql = f"UPDATE rental SET available_from = '{available_from}', car_id = '{car_id}', customer_id = '{customer_id}', from_date = '{from_date}', status = '{status}', to_date = '{to_date}' WHERE id = {rental_id};"

        md.execute_db(sql)
        response = RentalItem().get(rental_id)

        return Response(response.data, status=204, mimetype=MASON)



class RentalStatus(Resource):
    """
    Represents a rental cars status in the system. This resource allows for retrieving a rental cars to see if they are
    available to rent.
    Attributes:
        N/A.
    Methods:
        get(): Retrieves a status rental cars from database and returns a JSON response of MASON media type.
    """
    def get(self, car_id):
        """
         Retrieves rental record with the specified car id from database and returns in JSON format.
         Args:
             car_id: car_id of the record in database to be retrieved.
         Returns:
             response (Response): the http request indicating success of the operation if response is `200`(OK) if
             the record was successfully retrieved, Otherwise the status code is `415`(Unsupported Media Type) and
             the response body contains error message in JSON format.
         Raises:
             N/A.
         """

        self.sql = f"SELECT * FROM rental where rental.car_id = {car_id} && rental.status='rented';"
        rental = md.query_db(self.sql)
        rental_hypmd = RentalHypermedia()
        rental_json = rental_hypmd.jsonify(rental)
        return Response(rental_json, 200, mimetype=MASON)
