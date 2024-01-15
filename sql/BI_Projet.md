
# Table de fait  

## Sales
 
Composé de : 
- SalesOrderheaderSalesReason

| Column | FROM | type | FK |
| ---- | ---- | ---- | ---- |
| Sales ID | SalesOrderHeader | int |  |
| Order date | SalesOrderHeader | date |  |
| due date | SalesOrderHeader | date |  |
| ship date | SalesOrderHeader | date |  |
| Online Order Flag | SalesOrderHeader | bool |  |
| Sales Order Number | SalesOrderHeader | string |  |
| Purchase Order Number | SalesOrderHeader | string |  |
| Account Number | SalesOrderHeader | string |  |
| Customer ID | SalesOrderHeader | int | Customer |
| Sales Person ID | SalesOrderHeader | int | SalesPerson |
| Territory ID | SalesOrderHeader | int | SalesTerritory |
| Currency Rate ID | SalesOrderHeader | int | CurrencyRate |
| Sub Total | SalesOrderHeader | float |  |
| Taxe amount | SalesOrderHeader | float |  |
| Freight | SalesOrderHeader | float |  |
| Total Due | SalesOrderHeader | float |  |
| SalesReasonID | SalesOrderHeaderSalesReason | int or null | SalesReason |
| CreditCardID | SalesOrderDetails | int | CreditCard |

## SalesDetails

composé de : 
- SalesDetails

| Column | FROM | type | FK |
| ---- | ---- | ---- | ---- |
| SalesID | SalesOrderDetails | int |  |
| SalesDetailsID |  | int |  |
| CarrierTrackingNumber |  | string |  |
| OrderQuantity |  | int |  |
| ProductID |  | int | Product |
| SpecialOfferID |  | int | SpecialOffer(from new's dim table) |
| UnitPrice |  | float |  |
| UnitPriceDiscount |  | float |  |
| LineTotal |  | int |  |

# Table dimension 

## Customer

composé de : 
- Customer

| Column | FROM | type | FK |
| ---- | ---- | ---- | ---- |
| CustomerID | Customer | int |  |
| PersonID | Customer | int | SalesPerson |
| StoreID | Customer | int | Store |
| TerritoryID | Customer | int | SalesTerritory |
| AccountNumber | Customer | string |  |

## SalesReason

composé de : 
- SalesReason

| Column | FROM | type |
| ---- | ---- | ---- |
| salesReasonID | SalesReason | int |
| Name | SalesReason | string |
| ReasonType | SalesReason | string |


## Special Offer

composé de:
- Special Offer
- Special Offer Product

| Column | FROM | type | FK |
| ---- | ---- | ---- | ---- |
| productOfferId | SpecialOfferProduct | int |  |
| productID | SpecialOfferProduct | int | Product |
| description | Special Offer | string |  |
| discountPct | Special Offer | float 0-100 |  |
| Type | Special Offer | string |  |
| Category | Special Offer | string |  |
| StartDate | Special Offer | date |  |
| EndDate | Special Offer | date |  |
| MinQuantity | Special Offer | int |  |
| MaxQuantity | Special Offer | int |  |

## CreditCard

composé de : 
- CreditCard

| Column | FROM | type | FK |
| ---- | ---- | ---- | ---- |
| CreditCardID |  | int |  |
| CardType |  | string |  |
| CardNumber |  | string |  |
| ExpMonth |  | init |  |
| ExpYear |  | int |  |



Table inutile : 

- CountryRegionCurrency 
- Currency
- SalesTerritoryHistory
- ShoppingCartItem
