CREATE TABLE Contoso.FactSales(
  SalesKey int, 
  DateKey timestamp, 
  ChannelKey int,
  StoreKey int, 
  ProductKey int, 
  PromotionKey int, 
  CurrencyKey int, 
  UnitCost float,
  UnitPrice float, 
  SalesQuantity int, 
  ReturnQuantity int,
  ReturnAmount float, 
  DiscountQuantity int, 
  DiscountAmount float, 
  TotalCost float, 
  SalesAmount float, 
  ETLLoadID int, 
  LoadDate timestamp, 
  UpdateDate timestamp) 
ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' LOCATION'/data/Contoso/FactSales';

CREATE  TABLE Contoso.DimDate(
  Datekey timestamp,
  FullDateLabel string,
  DateDescription string,
  CalendarYear int,
  CalendarYearLabel string,
  CalendarHalfYear int,
  CalendarHalfYearLabel string,
  CalendarQuarter int,
  CalendarQuarterLabel string,
  CalendarMonth int,
  CalendarMonthLabel string,
  CalendarWeek int,
  CalendarWeekLabel string,
  CalendarDayOfWeek int,
  CalendarDayOfWeekLabel string,
  FiscalYear int,
  FiscalYearLabel string,
  FiscalHalfYear int,
  FiscalHalfYearLabel string,
  FiscalQuarter int,
  FiscalQuarterLabel string,
  FiscalMonth int,
  FiscalMonthLabel string,
  IsWorkDay string,
  IsHoliday int,
  HolidayName string,
  EuropeSeason string,
  NorthAmericaSeason string,
  AsiaSeason string) 
ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' LOCATION '/data/Contoso/DimDate';

CREATE  TABLE Contoso.DimChannel(
  ChannelKey int,
  ChannelLabel string,
  ChannelName  string,
  ChannelDescription string)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' LOCATION '/data/Contoso/DimChannel';


CREATE  TABLE Contoso.DimGeography(
  GeographyKey int, 
  GeographyType string,
  ContinentName string,
  CityName string,
  StateProvinceName string,
  RegionCountryName string
) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' LOCATION '/data/Contoso/DimGeography';

CREATE  TABLE Contoso.DimStore(
  StoreKey int,
  GeographyKey int,
  StoreManager int,
  StoreType string,
  StoreName string,
  StoreDescription string,
  Status string,
  StorePhone string,
  StoreFax string,
  CloseReason string,
  EmployeeCount int,
  SellingAreaSize float) 
ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' LOCATION '/data/Contoso/DimStore';

CREATE  TABLE Contoso.DimProduct(
  ProductKey int,
  ProductLabel string,
  ProductName string,
  ProductDescription string,
  ProductSubcategoryKey int,
  Manufacturer string,
  BrandName string,
  ClassID string,
  ClassName string,
  StyleID string,
  StyleName string,
  ColorID string,
  ColorName string,
  Size string,
  Weight float,
  WeightUnitMeasureID string,
  UnitOfMeasureID string,
  UnitOfMeasureName string,
  StockTypeID string,
  StockTypeName string,
  UnitCost int,
  UnitPrice int) 
ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' LOCATION '/data/Contoso/DimProduct';

CREATE  TABLE Contoso.DimProductSubcategory(
  ProductSubcategoryKey int,
  ProductSubcategoryLabel string,
  ProductSubcategoryName string,
  ProductSubcategoryDescription string,
  ProductCategoryKey int) 
ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' LOCATION '/data/Contoso/DimProductSubcategory'; 

CREATE  TABLE Contoso.DimProductCategory(
  ProductCategoryKey int,
  ProductCategoryLabel string,
  ProductCategoryName string,
  ProductCategory string) 
ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' LOCATION '/data/Contoso/DimProductCategory';