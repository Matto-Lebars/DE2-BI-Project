USE de2-bi-project;

DROP TABLE IF EXISTS de2-bi-project.Sales;
DROP TABLE IF EXISTS de2-bi-project.SalesDetails;
DROP TABLE IF EXISTS de2-bi-project.Customer;
DROP TABLE IF EXISTS de2-bi-project.SpecialOffer;
DROP TABLE IF EXISTS de2-bi-project.CreditCard;
DROP TABLE IF EXISTS de2-bi-project.SalesReason;

-- Table de fait

-- Sales
CREATE TABLE Sales (
    SalesID INT PRIMARY KEY,
    OrderDate DATE,
    DueDate DATE,
    ShipDate DATE,
    OnlineOrderFlag BOOLEAN,
    SalesOrderNumber VARCHAR(255),
    PurchaseOrderNumber VARCHAR(255),
    AccountNumber VARCHAR(255),
    CustomerID INT,
    SalesPersonID INT,
    TerritoryID INT,
    CurrencyRateID INT,
    SubTotal FLOAT,
    TaxAmount FLOAT,
    Freight FLOAT,
    TotalDue FLOAT,
    SalesReasonID INT,
    CreditCardID INT
);

-- SalesDetails
CREATE TABLE SalesDetails (
    SalesID INT REFERENCES Sales(SalesID),
    SalesDetailsID INT PRIMARY KEY,
    CarrierTrackingNumber VARCHAR(255),
    OrderQuantity INT,
    ProductID INT,
    SpecialOfferID INT,
    UnitPrice FLOAT,
    UnitPriceDiscount FLOAT,
    LineTotal INT
);

-- Table dimension

-- Customer
CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY,
    PersonID INT,
    StoreID INT,
    TerritoryID INT,
    AccountNumber VARCHAR(255)
);

-- SalesReason
CREATE TABLE SalesReason (
    SalesReasonID INT PRIMARY KEY,
    Name VARCHAR(255),
    ReasonType VARCHAR(255)
);

-- SpecialOffer
CREATE TABLE SpecialOffer (
    ProductOfferID INT PRIMARY KEY,
    Description VARCHAR(255),
    DiscountPct FLOAT,
    Type VARCHAR(255),
    Category VARCHAR(255),
    StartDate DATE,
    EndDate DATE,
    MinQuantity INT,
    MaxQuantity INT
);

-- CreditCard
CREATE TABLE CreditCard (
    CreditCardID INT PRIMARY KEY,
    CardType VARCHAR(255),
    CardNumber VARCHAR(255),
    ExpMonth INT,
    ExpYear INT
);