"""
This file tests all the apis of car rental, the file takes a test_data_obj and inserts it into the db,
then quires back and validates the object, finally it tests the delete request by deleting the test_data_obj
"""
from car_rental.app import app

CAR_TEST_DATA = {
    "body_color": "LightSlateGray",
    "cylinder_count": "4",
    "engine_number": "1025808",
    "horse_power_cc": "1432",
    "maker_name": "Cox-Martin",
    "mfg_year": "2004",
    "model": "thousand success",
    "name": "establish decide",
    "rent_price": 56.0,
    "seating_capacity": "8",
    "year": 1994,

}

CUSTOMER_TEST_DATA = {

    "address": "finland",
    "car_id": 34,
    "email": "jjsdf@gmail.com",
    "name": "ijlal khan",
    "phone": "454643",
    "registration_date": "2019-11-23 00:00:00",
    "surname": "khan"
}
CUSTOMER_TEST_DATA_UPDATE = {
    "id": 0,
    "address": "england",
    "car_id": 34,
    "email": "jjsdf@gmail.com",
    "name": "ramisha",
    "phone": "454643",
    "registration_date": "2019-11-23 00:00:00",
    "surname": "khan"
}
RENTAL_TEST_DATA = {
    "available_from": "2024-03-06 00:00:00",
    "car_id": 196,
    "customer_id": 43,
    "from_date": "2022-12-27 00:00:00",
    "status": "rented",
    "to_date": "2024-03-06 00:00:00"
}

HEADER = {
    'token': 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyIjoiYSIsImV4cGlyYXRpb24iOjE2ODIzNjIwODl9.RMWfKE2bL39EsYFUjeu3VQ3ZDaQSjpL-pEZyCg6lmZY'}


def test_get_car():
    """
    Test function for the /api/cars/ endpoint.

    Uses the Flask test client to send a GET request to the endpoint and asserts that the response status code is 200.

    Raises:
        AssertionError: If the response status code is not 200.
    """
    # response = app.test_client().get('/api/cars/',headers=HEADER)
    response = app.test_client().get('/api/cars/')
    assert response.status_code == 200


def test_create_car():
    """
        Test function for the /api/cars/ endpoint.

        Uses the Flask test client to send a GET request to the endpoint and asserts that the response status code is 200.

        Raises:
            AssertionError: If the response status code is not 200.
        """
    # Send a POST request to create a new car with the JSON data
    response = app.test_client().post('/api/cars/', json=CAR_TEST_DATA)

    assert response.status_code == 201
    json_data = response.json[0]

    # Verify that the response body contains the expected data
    new_car_id = json_data.pop('id')
    json_data.pop('links')
    json_data.pop('status')
    assert json_data == CAR_TEST_DATA

    delete_car(new_car_id)


def delete_car(new_car_id):
    """
        Sends a DELETE request to delete the car that was added for testing.
        Args:
            new_car_id (int): The ID of the car to be deleted.
        Returns:
            status_code == 204
        Raises:
            AssertionError: If the response status code is not 204.
        """
    response = app.test_client().delete(f'/api/car/{new_car_id}/')
    assert response.status_code == 204


def test_customer():
    """
    Test function for the /api/cars/customers/ endpoint.

    Uses the Flask test client to send a GET request to the endpoint and asserts that the response status code is 200.

    Raises:
        AssertionError: If the response status code is not 200.
    """
    response = app.test_client().get('/api/customers/')

    assert response.status_code == 200


def test_create_customer():
    """
    Test function for the /api/cars/customer/ endpoint.

    Uses the Flask test client to send a GET request to the endpoint and asserts that the response status code is 200.

    Raises:
        AssertionError: If the response status code is not 200.
    """
    # Send a POST request to create a new customer with the JSON data
    response = app.test_client().post('/api/customers/', json=CUSTOMER_TEST_DATA)
    assert response.status_code == 201
    json_data = response.json[0]
    # Verify that the response body contains the expected data
    new_car_id = json_data.pop('id')
    json_data.pop('links')
    assert json_data == CUSTOMER_TEST_DATA

    # Let check for update as well
    CUSTOMER_TEST_DATA_UPDATE["id"] = new_car_id

    responseb = app.test_client().put(f'/api/customer/{new_car_id}/', json=CUSTOMER_TEST_DATA_UPDATE)

    assert responseb.status_code == 204

    delete_customer(new_car_id)


def delete_customer(customer_id):
    """
        Sends a DELETE request to delete the customer that was added for testing.
        Args:
            customer_id (int): The ID of the car to be deleted.
        Returns:
            status_code == 204
        Raises:
            AssertionError: If the response status code is not 204.
        """
    response = app.test_client().delete(f'/api/customer/{customer_id}/')
    assert response.status_code == 204


def test_rental():
    """
    Test function for the /api/rental/ endpoint.

    Uses the Flask test client to send a GET request to the endpoint and asserts that the response status code is 200.

    Raises:
        AssertionError: If the response status code is not 200.
    """
    response = app.test_client().get('/api/rentals/')

    assert response.status_code == 200


def test_create_rental():
    """
    Test function for the /api/rental/ endpoint.

    Uses the Flask test client to send a GET request to the endpoint and asserts that the response status code is 200.

    Raises:
        AssertionError: If the response status code is not 200.
    """
    # Send a POST request to create a new customer with the JSON data
    response = app.test_client().post('/api/rentals/', json=RENTAL_TEST_DATA)
    assert response.status_code == 201
    print(response.json)
    json_data = response.json[0]
    # Verify that the response body contains the expected data
    new_rental_id = json_data.pop('id')
    json_data.pop('links')
    assert json_data == RENTAL_TEST_DATA

    delete_rental(new_rental_id)


def delete_rental(rental_id):
    """
        Sends a DELETE request to delete the rental that was added for testing.
        Args:
            car_id (int): The ID of the car to be deleted.
        Returns:
            status_code == 204
        Raises:
            AssertionError: If the response status code is not 204.
        """
    response = app.test_client().delete(f'/api/rental/{rental_id}/')
    assert response.status_code == 204
