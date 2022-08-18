
-- Now, we can create TRIGGERS for some tables
-- [Beers].[UpdatedBeers]
  CREATE TRIGGER [dbo].[TE_UpdatedBeer]
  ON [dbo].[Beers] FOR UPDATE
  AS
  -- No mostrar registro de ejecucion
  SET NOCOUNT ON
  DECLARE @BrandId INT, @BeerId INT, @BeerName VARCHAR(250)
  DECLARE @BrandName VARCHAR(250), @BrandType VARCHAR(250) 
  SELECT @BrandId=M.BrandId, @BeerId=BeerId, @BrandName=M.BrandName, @BrandType=M.BrandType, @BeerName=BeerName
  FROM inserted I INNER JOIN Brands M ON M.BrandId=I.BrandId
  UPDATE Resume
  SET BrandId=@BrandId, 
    BeerId=@BeerId, 
    BrandName=@BrandName, 
    BrandType=@BrandType, 
    BeerName=@BeerName
  WHERE BrandId=@BrandId AND BeerId=@BeerId
  GO

  ALTER TABLE [dbo].[Beers] ENABLE TRIGGER [TE_UpdatedBeer]
  GO
  
---- [Beers].[Inserted]
CREATE TRIGGER [dbo].[TE_InsertedBeer]
ON [dbo].[Beers] FOR INSERT
AS
-- No mostrar registro de ejecucion
SET NOCOUNT ON
DECLARE @BrandId INT, @BeerId INT, @BeerName VARCHAR(250)
DECLARE @BrandName VARCHAR(250), @BrandType VARCHAR(250) 
SELECT @BrandId=M.BrandId, @BeerId=BeerId, @BrandName=M.BrandName, @BrandType=M.BrandType, @BeerName=BeerName
FROM inserted I INNER JOIN Brands M ON M.BrandId=I.BrandId
INSERT INTO Resume VALUES(
	@BrandId, @BeerId, @BrandName, @BrandType, @BeerName
)
GO

ALTER TABLE [dbo].[Beers] ENABLE TRIGGER [TE_InsertedBeer]
GO
