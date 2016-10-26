Create view Contoso.Store_Geography AS select 
DimStore.StoreKey, 
DimStore.GeographyKey, 
DimStore.StoreManager, 
DimStore.StoreType, 
DimStore.StoreName, 
DimStore.StoreDescription, 
DimStore.Status, 
DimStore.StorePhone, 
DimStore.StoreFax, 
DimStore.CloseReason, 
DimStore.EmployeeCount, 
DimStore.SellingAreaSize, 
DimGeography.GeographyType, 
DimGeography.ContinentName, 
DimGeography.CityName, 
DimGeography.StateProvinceName, 
DimGeography.RegionCountryName 
from Contoso.DimStore inner join Contoso.DimGeography onDimStore.GeographyKey = DimGeography.GeographyKey;

create view Contoso.productsubcategory_productcategory AS select 
DimProductSubcategory.ProductSubcategoryKey,
DimProductSubcategory.ProductSubcategoryLabel,
DimProductSubcategory.ProductSubcategoryName,
DimProductSubcategory.ProductCategoryKey,
DimProductCategory.ProductCategoryLabel,
DimProductCategory.ProductCategoryName 
from Contoso.DimProductSubcategory inner join Contoso.DimProductCategory on DimProductSubcategory.ProductCategoryKey=DimProductCategory.ProductCategoryKey;


create view Contoso.product_productsubcategory AS select 
DimProduct.ProductKey,
DimProduct.ProductLabel,
DimProduct.ProductName,
DimProduct.ProductDescription,
DimProduct.ProductSubcategoryKey,
DimProduct.Manufacturer,
DimProduct.BrandName,
DimProduct.ClassID,
DimProduct.ClassName,
DimProduct.StyleID,
DimProduct.StyleName,
DimProduct.ColorID,
DimProduct.ColorName,
DimProduct.Size,
DimProduct.Weight,
DimProduct.WeightUnitMeasureID,
DimProduct.UnitOfMeasureID,
DimProduct.UnitOfMeasureName,
DimProduct.StockTypeID,
DimProduct.StockTypeName,
DimProduct.UnitCost,
DimProduct.UnitPrice,
productsubcategory_productcategory.ProductSubcategoryLabel,
productsubcategory_productcategory.ProductSubcategoryName,
productsubcategory_productcategory.ProductCategoryKey,
productsubcategory_productcategory.ProductCategoryLabel,
productsubcategory_productcategory.ProductCategoryName
from Contoso.DimProduct inner join Contoso.productsubcategory_productcategory on productsubcategory_productcategory.ProductSubcategoryKey=DimProduct.ProductSubcategoryKey;
