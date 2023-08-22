from faker import Faker
import random
import car_rental.db_util as md

fake = Faker()

# Generate dummy data for customers table and insert statements
for i in range(100):
    name = fake.first_name()
    surname = fake.last_name()
    # address = fake.text(max_nb_chars=100)[:100].replace("'", "")
    address = fake.address()
    phone = fake.phone_number()
    registration_date = fake.date_between(start_date='-5y', end_date='today')
    car_id = random.randint(1, 100)
    email = fake.email()

    insert_statement = f"INSERT INTO customer (name, surname, address, phone, registration_date, car_id, email) " \
                       f"VALUES ('{name}', '{surname}', '{address}', '{phone}', '{registration_date}', {car_id}, '{email}');"

    print(insert_statement)

    md.execute_db(insert_statement)


# Generate dummy data for rentals table and insert statements
for i in range(100):
    car_id = random.randint(1, 100)
    customer_id = random.randint(1, 100)
    status = random.choice(['reserved', 'rented', 'returned'])
    from_date = fake.date_between(start_date='-1y', end_date='today')
    to_date = fake.date_between(start_date=from_date, end_date='+1y')
    available_from = to_date

    insert_statement = f"INSERT INTO rental (car_id, customer_id, status, from_date, to_date, available_from) " \
                       f"VALUES ({car_id}, {customer_id}, '{status}', '{from_date}', '{to_date}', '{available_from}');"

    print(insert_statement)

    md.execute_db(insert_statement)


# Generate dummy data for cars table and insert statements
for i in range(100):
    name = fake.word() + ' ' + fake.word()
    rent_price = random.randint(50, 200)
    year = random.randint(2010, 2023)
    model = fake.word() + ' ' + fake.word()
    engine_number = fake.random_int(min=1000000, max=9999999)
    cylinder_count = random.choice([4, 6, 8])
    body_color = fake.color_name()
    mfg_year = random.randint(2000, 2023)
    seating_capacity = random.randint(2, 8)
    horse_power_cc = random.randint(1000, 3000)
    maker_name = fake.company()

    insert_statement = f"INSERT INTO car (name, rent_price, year, model, engine_number, cylinder_count, body_color, mfg_year, seating_capacity, horse_power_cc, maker_name) " \
                       f"VALUES ('{name}', {rent_price}, {year}, '{model}', {engine_number}, {cylinder_count}, '{body_color}', {mfg_year}, {seating_capacity}, {horse_power_cc}, '{maker_name}');"

    print(insert_statement)

    md.execute_db(insert_statement)
