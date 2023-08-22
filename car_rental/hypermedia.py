"""
This file has all the hypermedia format for all apis
"""
import json


class CarsHypermedia:
    """
    Represents the Hypermedia format for cars in the system.
    Attributes:
        N/A.

    Methods:
        json_format():  returns a JSON type.
        jsonify():returns a list of JSON type object.
    """

    def json_format(self, car):
        """
        Retrieves a JSON format car record  from database .

        Args:
            car:list of car object of the record in database to be retrieved.

        Returns:
            Json object representing car data from database.

        Raises:
            N/A.
        """
        return {
            "id": car['id'],
            "name": f"{car['name']}",
            "rent_price": car['rent_price'],
            "year": car['year'],
            "model": f"{car['model']}",
            "engine_number": f"{car['engine_number']}",
            "cylinder_count": f"{car['cylinder_count']}",
            "body_color": f"{car['body_color']}",
            "mfg_year": f"{car['mfg_year']}",
            "seating_capacity": f"{car['seating_capacity']}",
            "horse_power_cc": f"{car['horse_power_cc']}",
            "maker_name": f"{car['maker_name']}",
            "status": f"{car['status']}",
            "links": [
                {"rel": "update",
                 "href": f"/car/{car['id']}",
                 "method": "PUT",
                 "type": "application/json",
                 "title": "Update car",
                 "schema": {
                     "type": "object",
                     "properties": {
                         "id": {
                             "type": "integer"
                         },
                         "name": {
                             "type": "string"
                         },
                         "rent_price": {
                             "type": "integer"
                         },
                         "year": {
                             "type": "integer"
                         },
                         "model": {
                             "type": "string"
                         },
                         "engine_number": {
                             "type": "string"
                         },
                         "cylinder_count": {
                             "type": "string"
                         },
                         "body_color": {
                             "type": "string"
                         },
                         "mfg_year": {
                             "type": "string"
                         },
                         "seating_capacity": {
                             "type": "string"
                         },
                         "horse_power_cc": {
                             "type": "string"
                         },
                         "maker_name": {
                             "type": "string"
                         },

                     },
                     "required": ["id"]
                 }
                 },
                {"rel": "delete",
                 "href": f"/car/{car['id']}",
                 "method": "DELETE",
                 "type": "application/json",
                 "title": "DELETE a car",
                 "schema": {
                     "type": "object",
                     "properties": {
                         "id": {
                             "type": "integer"
                         }
                     },
                     "required": ["id"]
                 }
                 },

            ],

        }

    def jsonify(self, car):
        """
        Retrieves a JSON format car record  from database .

        Args:
            car:list of car object of the record in database to be retrieved.

        Returns:
            Json object representing car data from database.

        Raises:
            N/A.
        """

        cars_list = [self.json_format(ca) for ca in car]
        car_json = json.dumps(cars_list)
        return car_json


class CustomerHypermedia:
    """
    Represents the Hypermedia format for customers in the system.
    Attributes:
        N/A.

    Methods:
        json_format():  returns a JSON type.
        jsonify():returns a list of JSON type object.
    """

    def json_format(self, customer):
        """
        Retrieves a JSON format customer record  from database .

        Args:
            customer:list of customer object of the record in database to be retrieved.

        Returns:
            Json object representing customer data from database.

        Raises:
            N/A.
        """
        return {
            "id": customer['id'],
            "name": f"{customer['name']}",
            "surname": f"{customer['surname']}",
            "address": f"{customer['address']}",
            "phone": f"{customer['phone']}",
            "registration_date": f"{customer['registration_date']}",
            "car_id": customer['car_id'],
            "email": f"{customer['email']}",

            "links": [
                {"rel": "update",
                 "href": f"/customer/{customer['id']}",
                 "method": "PUT",
                 "type": "application/json",
                 "title": "update customer",
                 "schema": {
                     "type": "object",
                     "properties": {
                         "id": {
                             "type": "integer"
                         },
                         "name": {
                             "type": "string"
                         },
                         "surname": {
                             "type": "string"
                         },
                         "address": {
                             "type": "string"
                         },
                         "registration_date": {
                             "type": "string"
                         },
                         "car_id": {
                             "type": "integer"
                         },
                         "email": {
                             "type": "string"
                         },
                         "phone": {
                             "type": "string"
                         }
                     },
                     "required": ["id"]
                 }
                 },
                {"rel": "delete",
                 "href": f"/customer/{customer['id']}",
                 "method": "DELETE",
                 "type": "application/json",
                 "title": "update customer",
                 "schema": {
                     "type": "object",
                     "properties": {
                         "id": {
                             "type": "integer"
                         }
                     },
                     "required": ["id"]
                 }
                 },
                {"rel": "car",
                 "href": f"/car/{customer['car_id']}",
                 "method": "GET",
                 "type": "application/json",
                 "title": "rented_cars",
                 "schema": {
                     "type": "object",
                     "properties": {
                         "car_id": {
                             "type": "integer"
                         }
                     },
                     "required": ["car_id"]
                 }
                 }
            ],

        }

    def jsonify(self, customer):
        """
        Retrieves a JSON format customer record  from database .

        Args:
            customer: list of customer object of the record in database to be retrieved.

        Returns:
            Json object representing customer data from database.

        Raises:
            N/A.
        """

        customer_list = [self.json_format(ca) for ca in customer]
        customer_json = json.dumps(customer_list)
        return customer_json


class RentalHypermedia:
    """
    Represents the Hypermedia format for rentals in the system.
    Attributes:
        N/A.

    Methods:
        json_format():  returns a JSON type.
        jsonify():returns a list of JSON type object.
    """

    def json_format(self, rental):
        """
        Retrieves a JSON format rental record  from database .

        Args:
            rental:list of rentals object of the record in database to be retrieved.

        Returns:
            Json object representing rentals data from database.

        Raises:
            N/A.
        """
        return {
            "id": rental['id'],
            "car_id": rental['car_id'],
            "customer_id": rental['customer_id'],
            "status": f"{rental['status']}",
            "from_date": f"{rental['from_date']}",
            "to_date": f"{rental['to_date']}",
            "available_from": f"{rental['available_from']}",

            "links": [
                {"rel": "update",
                 "href": f"/rental/{rental['id']}",
                 "method": "PUT",
                 "type": "application/json",
                 "title": "Update rental",
                 "schema": {
                     "type": "object",
                     "properties": {
                         "id": {
                             "type": "integer"
                         },
                         "car_id": {
                             "type": "integer"
                         },
                         "customer_id": {
                             "type": "integer"
                         },
                         "status": {
                             "type": "string"
                         },
                         "from_date": {
                             "type": "string"
                         },
                         "to_date": {
                             "type": "string"
                         },
                         "available_from": {
                             "type": "string"
                         }

                     },
                     "required": ["id"]
                 }
                 },
                {"rel": "delete",
                 "href": f"/rental/{rental['id']}",
                 "method": "DELETE",
                 "type": "application/json",
                 "title": "Delete rental",
                 "schema": {
                     "type": "object",
                     "properties": {
                         "id": {
                             "type": "integer"
                         }
                     },
                     "required": ["id"]
                 }
                 },
                {"rel": "car",
                 "href": f"/car/{rental['car_id']}",
                 "method": "GET",
                 "type": "application/json",
                 "title": "Rented cars",
                 "schema": {
                     "type": "object",
                     "properties": {
                         "car_id": {
                             "type": "integer"
                         }
                     },
                     "required": ["car_id"]
                 }
                 },
                {"rel": "customer",
                 "href": f"/customer/{rental['customer_id']}",
                 "method": "GET",
                 "type": "application/json",
                 "title": "Customer",
                 "schema": {
                     "type": "object",
                     "properties": {
                         "customer_id": {
                             "type": "integer"
                         }
                     },
                     "required": ["customer_id"]
                 }

                 }
            ],

        }

    def jsonify(self, rental):
        """
        Retrieves a JSON format rental record  from database .

        Args:
            rental: List of rental object of the record in database to be retrieved.

        Returns:
            Json object representing of rental data from database.

        Raises:
            N/A.
        """

        rental_list = [self.json_format(ca) for ca in rental]
        rental_json = json.dumps(rental_list)
        return rental_json
