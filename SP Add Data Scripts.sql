---- SP_addBeers
  CREATE PROCEDURE [dbo].[SP_addBeers]
    -- Add the parameters for the stored procedure here
    @BeerName varchar (250),
    @BrandId varchar (250),
    @CreatedDate datetime =NULL
  AS
  BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON;

      -- Insert statements for procedure here
    INSERT INTO dbo.Beers (BeerName, BrandId, CreatedDate, CreatedBy,UpdatedDate,UpdatedBy,ComputerId,ApplicationId)
    VALUES (@BeerName, @BrandId, GETDATE(), 'AdminUser', NULL, NULL, 'AdminDevice', 0)
    END
  GO
  
---- SP_addBrands
  CREATE PROCEDURE [dbo].[addBrands]
    -- Add the parameters for the stored procedure here
    @BrandName varchar (250),
    @BrandType varchar (100),
    @CreatedDate datetime =NULL
  AS
  BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON;

      -- Insert statements for procedure here
    INSERT INTO dbo.Brands (BrandName, BrandType, CreatedDate, CreatedBy,UpdatedDate,UpdatedBy,ComputerId,ApplicationId)
    VALUES (@BrandName, @BrandType, GETDATE(), 'AdminUser', NULL, NULL, 'AdminDevice', 0)
    END
  GO