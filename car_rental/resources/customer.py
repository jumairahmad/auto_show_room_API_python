"""
This file has all the APIs related to customer
"""

from flask import Response, request
from flask_restful import Resource
import car_rental.db_util as md
from car_rental.hypermedia import CustomerHypermedia, CarsHypermedia
from car_rental import cache

MASON = "application/vnd.mason+json"


class CustomerCollection(Resource):
    """
    Represents the collection of all customers in the system. This resource allows for retrieving all customers or adding a new
    customer to the collection.

    Attributes:
        N/A.

    Methods:
        get(): Retrieves a list of all customers from database and returns a JSON response of MASON media type.
        post(): Inserts a new customer to the database based on JSON data in the request body.
        put(): Updates an existing customer to the database based on JSON data in the request body.
    """

    @cache.cached(timeout=10, key_prefix="customers_cache")
    def get(self):
        """
        Retrieves a list of all customers from database and returns a JSON response of MASON media type.

        Args:
            N/A.

        Returns:
            response (Response): http response containing list of cars as JSON-encoded string with MASON media type.
            The status code of response is `200`(OK).

        Raises:
            None.
        """
        sql = "SELECT * FROM customer;"
        cust = md.query_db(sql)
        cust_hypmd = CustomerHypermedia()
        cust_json = cust_hypmd.jsonify(cust)
        return Response(cust_json, 200, mimetype=MASON)

    def post(self):
        """
        Inserts a new customer to the database, based on JSON data in the request body.

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

        insert_statement = "INSERT INTO customer (name, surname, address, phone, registration_date, car_id, email) VALUES ('{name}', '{surname}', '{address}', '{phone}', '{registration_date}', '{car_id}', '{email}');"
        insert_statement = insert_statement.format(**request.json)
        last_row_id = md.execute_db(insert_statement)
        response = CustomerItem().get(last_row_id)
        return Response(response.data, status=201, mimetype=MASON)




class CustomerItem(Resource):
    """
    Represents a customer in the system. This resource allows for retrieving a customer or deleting a customer.
    Attributes:
        N/A.
    Methods:
        get(): Retrieves a list of all customers from database and returns a JSON response of MASON media type.
        delete(): Inserts a new customer to the database based on JSON data in the request body.
    """

    def __init__(self):
        self.sql = None

    @cache.cached(timeout=10, key_prefix="customer_cache")
    def get(self, customer_id):
        """
        Retrieves customer record with the specified customer id from database and returns in JSON format.

        Args:
            customer_id:customer_id which contains customer id of the record in database to be retrieved.

        Returns:
            response (Response): the http request indicating success of the operation if response is `200`(OK) if
            the record was successfully retrieved, Otherwise the status code is `415`(Unsupported Media Type) and
            the response body contains error message in JSON format.

        Raises:
            N/A.
        """

        # customer_id = customer.id
        sql = f"SELECT * FROM customer where id = {customer_id}"
        cust = md.query_db(sql)
        cust_hypmd = CustomerHypermedia()
        customer_json = cust_hypmd.jsonify(cust)
        return Response(customer_json, 200, mimetype=MASON)

    def delete(self, customer_id):
        """
        Deletes the customer record from database by specified customer id.

        Args:
            customer_id (int):customer_id which contains id of that customer.

        Returns:
            response (Response): the http request indicating success of the operation if response is `204`(No Content) if
            the record was successfully deleted.

        Raises:
            N/A.
        """
        # customer_id = customer.id
        print(f"deleting customer with {customer_id}")
        self.sql = f"DELETE FROM customer WHERE id = {customer_id};"
        md.execute_db(self.sql)
        return Response(status=204)

    def put(self, customer_id):
        """
        Updates existing  customer record in database and returns response in JSON format.

        Args:
            customer_id: customer id which contains customer id to update,name,surname,address,phone,registration_date
            and email of the Customer.

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
        name = request.json["name"]
        surname = request.json["surname"]
        address = request.json["address"]
        phone = request.json["phone"]
        registration_date = request.json["registration_date"]
        email = request.json["email"]

        sql = f"UPDATE customer SET name = '{name}', surname = '{surname}', address = '{address}', email = '{email}', phone = '{phone}', registration_date = '{registration_date}' WHERE id = {customer_id};"

        md.execute_db(sql)
        response = CustomerItem().get(customer_id)

        return Response(response.data, status=204, mimetype=MASON)


class CarByCustomers(Resource):
    """
    Represents the collection of all cars rented by customers in the system. This resource allows for retrieving all cars
    rented by customer

    Attributes:
        N/A.

    Methods:
        get(): Retrieves a list of all rented cars by customers from database and returns a JSON response of MASON media type.
.
    """

    def get(self, customer_id):
        """
        Retrieves the list of cars rented by customer.

        Args:
            customer_id (int):customer_id which contains id of that customer.

        Returns:
            response (Response): A JSON response containing list of cars rented by customer.

        Raises:
            N/A.
       """
        sql = f"SELECT car.* FROM car INNER JOIN rental ON rental.car_id = car.id WHERE rental.status = 'rented' AND rental.customer_id = {customer_id};"

        cars_by_cust = md.query_db(sql)
        car_hypmd = CarsHypermedia()
        cars_by_cust_json = car_hypmd.jsonify(cars_by_cust)
        print(cars_by_cust)
        return Response(cars_by_cust_json, 200, mimetype=MASON)
