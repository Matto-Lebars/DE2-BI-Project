from sqlalchemy import Column, Integer, String, Date, Boolean, Float
from sqlalchemy.ext.declarative import declarative_base

Base = declarative_base()


class Sales(Base):
    __tablename__ = 'Sales'

    SalesID = Column(Integer, primary_key=True)
    OrderDate = Column(Date)
    DueDate = Column(Date)
    ShipDate = Column(Date)
    OnlineOrderFlag = Column(Boolean)
    SalesOrderNumber = Column(String(255))
    PurchaseOrderNumber = Column(String(255))
    AccountNumber = Column(String(255))
    CustomerID = Column(Integer)
    SalesPersonID = Column(Integer)
    TerritoryID = Column(Integer)
    CurrencyRateID = Column(Integer)
    SubTotal = Column(Float)
    TaxAmount = Column(Float)
    Freight = Column(Float)
    TotalDue = Column(Float)
    SalesReasonID = Column(Integer)
    CreditCardID = Column(Integer)
