-- We need Stored Procedures in this DataBase

  USE BEERSDB
  --SP_ShowBrands
    SET ANSI_NULLS ON
    GO

    SET QUOTED_IDENTIFIER ON
    GO
    CREATE PROCEDURE [dbo].[SP_showMarcas]
      -- Add the parameters for the stored procedure here
      @BrandId int = NULL,
      @BrandName varchar (250) = NULL,
      @BrandType varchar(250) = NULL
    AS
    BEGIN
      -- SET NOCOUNT ON added to prevent extra result sets from
      -- interfering with SELECT statements.
      SET NOCOUNT ON;

        -- Insert statements for procedure here
      SELECT BrandId, BrandName, BrandType as BrandType FROM dbo.Brands 
      WHERE (@BrandId IS NULL OR BrandId=@BrandId)
      AND (@BrandName IS NULL OR BrandName LIKE '%'+@BrandName+'%')
      AND (@BrandType IS NULL OR BrandType LIKE '%'+@BrandType+'%')

      END
    GO
  --SP_Show Beers
	SET ANSI_NULLS ON
    GO

    SET QUOTED_IDENTIFIER ON
    GO
	CREATE PROCEDURE [dbo].[SP_showBeers]
	-- Add the parameters for the stored procedure here 
	@BeerId INT NULL,
	@BeerName VARCHAR(250) NULL,
	@BrandId INT NULL
	AS
    BEGIN
      -- SET NOCOUNT ON added to prevent extra result sets from
      -- interfering with SELECT statements.
      SET NOCOUNT ON;

	  -- Insert statements for procedure here
      SELECT BeerId, BrandId, BeerName FROM dbo.Beers 
      WHERE (@BeerId IS NULL OR BeerId=@BeerId)
      AND (@BeerName IS NULL OR BeerName LIKE '%'+@BeerName+'%')
      AND (@BrandId IS NULL OR @BrandId LIKE '%'+@BrandId+'%')

      END