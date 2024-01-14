SELECT
    sales.SalesOrderID,
    OrderDate,
    DueDate,
    ShipDate,
    OnlineOrderFlag,
    SalesOrderNumber,
    AccountNumber,
    CustomerID,
    SalesPersonID,
    TerritoryID,
    CurrencyRateID,
    SubTotal,
    TaxAmt,
    Freight,
    TotalDue,
    CreditCardID,
    SalesReasonID
FROM Sales.SalesOrderHeader as sales
INNER JOIN Sales.SalesOrderHeaderSalesReason as reason
    ON sales.SalesOrderID = reason.SalesOrderID;

SELECT SalesOrderID,
    SalesOrderDetailID,
    CarrierTrackingNumber,
    OrderQty,
    ProductID,
    SpecialOfferID,
    UnitPrice,
    UnitPriceDiscount,
    LineTotal
       FROM Sales.SalesOrderDetail;

SELECT
    CustomerID,
    PersonID,
    StoreID,
    TerritoryID,
    AccountNumber
    From Sales.Customer;

SELECT
    SalesReasonID,
    Name,
    ReasonType
    From Sales.SalesReason;

SELECT
    so.SpecialOfferID,
    ProductID,
    Description,
    DiscountPct,
    Type,
    Category,
    StartDate,
    EndDate,
    MinQty,
    MaxQty
    From Sales.SpecialOfferProduct as sop
    INNER JOIN Sales.SpecialOffer as so
        ON sop.SpecialOfferID = so.SpecialOfferID;

SELECT
    CreditCardID,
    CardType,
    CardNumber,
    ExpMonth,
    ExpYear
    from Sales.CreditCard;