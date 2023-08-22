"""this file holds connection and the MySQL quires to access the database"""
import pandas as pd
from sqlalchemy import create_engine
from sqlalchemy.pool import QueuePool

MYSQL_URL = "mysql+mysqlconnector://{user}:{password}@{host}:{port}/{database}"
# db_params = {
#     'host': '195.148.22.175',  # local host
#     'port': '3306',
#     'database': 'car_rental',
#     'user': 'myuser',
#     'password': 'mypassword'
# }
db_params = {
    'host': '127.0.0.1',  # local host
    'port': '3306',
    'database': 'car_rental',
    'user': 'root',
    'password': '1995'
}

def get_db_conn(targetdb=None):
    """
    Opens a new database connection if there is none yet for the current application context

    Args:
        targetdb(optional[str]): the name of database to connect to. Defaults to None,which means the function will,
        use the default parameters specified in `db_params`.

    Returns:
        sqlalchemy.engine.Engine : A database instance for the specified database.

    Raises:
        N/A
    """
    dict_params = dict(db_params)
    if targetdb:  # if there is a target db connect to it else use the params
        dict_params['database'] = targetdb
    target_engine = create_engine(MYSQL_URL.format(**dict_params), poolclass=QueuePool, pool_size=10,
                                  echo=False,
                                  pool_pre_ping=True)
    return target_engine


def query_db(query):
    """
    to do
    Executes a sql query and returns the results

    Args:
        query(str): `sql` variable contains the sql query.

    Returns:
        sqlalchemy.engine.ResultProxy: A SQLAlchemy Result Proxy object representing the query results.

    Raises:
        N/A
    """
    print(query)
    con = get_db_conn()
    query_result = pd.read_sql_query(sql=query, con=con)
    con.dispose()
    return query_result.to_dict(orient='records')


def execute_db(query):
    """
       Executes a sql query and returns the results

       Args:
           query(str) : `sql` variable contains the sql query to execute .

       Returns:
           sqlalchemy.engine.ResultProxy: A SQLAlchemy Result Proxy object representing the query results.

       Raises:
           N/A
       """
    print(query)
    con = get_db_conn()
    query_result = con.execute(query)
    con.dispose()
    return query_result.lastrowid


if __name__ == '__main__':
    SQL = "SELECT * FROM car where id = 133;"
    car = query_db(SQL)
    print(car)
