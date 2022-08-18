---- SP_updateBrands
  CREATE PROCEDURE [dbo].[SP_updateBrands]
    -- Add the parameters for the stored procedure here
    @BrandId int,
    @BrandName varchar (250),
    @BrandType varchar (100)
  AS
  BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON;

      -- Insert statements for procedure here
    UPDATE dbo.Brands 
    SET BrandName=@BrandName, BrandType=@BrandType, UpdatedDate=GETDATE()
    WHERE BrandId=@BrandId
    END
  GO