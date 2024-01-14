from sqlalchemy import Column, Integer, String, Float, Date
from sqlalchemy.ext.declarative import declarative_base

Base = declarative_base()


class SpecialOffer(Base):
    __tablename__ = 'SpecialOffer'

    ProductOfferID = Column(Integer, primary_key=True)
    Description = Column(String(255))
    DiscountPct = Column(Float)
    Type = Column(String(255))
    Category = Column(String(255))
    StartDate = Column(Date)
    EndDate = Column(Date)
    MinQuantity = Column(Integer)
    MaxQuantity = Column(Integer)
