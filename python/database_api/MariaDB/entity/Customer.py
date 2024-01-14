from sqlalchemy import Column, Integer, String
from sqlalchemy.ext.declarative import declarative_base

Base = declarative_base()


class Customer(Base):
    __tablename__ = 'Customer'

    CustomerID = Column(Integer, primary_key=True)
    PersonID = Column(Integer)
    StoreID = Column(Integer)
    TerritoryID = Column(Integer)
    AccountNumber = Column(String(255))
