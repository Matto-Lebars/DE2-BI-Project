"""
Author : Matto Le Bars
SessionManager class is used to create a session to the database.
"""

from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker


class SessionManager:
    def __init__(self, connection_string):
        self.engine = create_engine(connection_string)
        self.Session = sessionmaker(bind=self.engine)

    def get_session(self):
        return self.Session()

    def get_engine(self):
        return self.engine
