from sqlalchemy import Column, Integer, String
from sqlalchemy.ext.declarative import declarative_base

Base = declarative_base()


class SalesReason(Base):
    __tablename__ = 'SalesReason'

    SalesReasonID = Column(Integer, primary_key=True)
    Name = Column(String(255))
    ReasonType = Column(String(255))