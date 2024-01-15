"""
Settings for the ETL process
"""

# Define the MS-SQL connection parameters
MS_SQL_DB_CONFIG = {
    'host': 'localhost:1433',
    'user': 'sa',
    'password': 'T€l€c0mste!',
    'database': 'TDERP',
    'driver': 'ODBC+Driver+17+for+SQL+Server'
}

MS_SQL_URI = (
    f"mssql+pyodbc://{MS_SQL_DB_CONFIG['user']}:{MS_SQL_DB_CONFIG['password']}@{MS_SQL_DB_CONFIG['host']}/{MS_SQL_DB_CONFIG['database']}?driver={MS_SQL_DB_CONFIG['driver']}"
)

# Define the MariaDB connection parameters
MARIA_DB_CONFIG = {
    'host': 'localhost',
    'user': 'project',
    'password': 'Telecom',
    'database': 'de2-bi-project',
}

MARIA_DB_URI = (
    f"mysql+mysqlconnector://{MARIA_DB_CONFIG['user']}:{MARIA_DB_CONFIG['password']}@{MARIA_DB_CONFIG['host']}/{MARIA_DB_CONFIG['database']}"
)
