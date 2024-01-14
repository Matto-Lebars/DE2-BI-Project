from sqlalchemy import Column, Integer, String
from sqlalchemy.ext.declarative import declarative_base

Base = declarative_base()


class CreditCard(Base):
    __tablename__ = 'CreditCard'

    CreditCardID = Column(Integer, primary_key=True)
    CardType = Column(String(255))
    CardNumber = Column(String(255))
    ExpMonth = Column(Integer)
    ExpYear = Column(Integer)
