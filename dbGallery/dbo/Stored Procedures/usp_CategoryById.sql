CREATE PROCEDURE [dbo].[usp_CategoryById]
@p_intCategoryId int

AS
BEGIN

	SET NOCOUNT ON;
	SELECT  CategoryId,
			CategoryName, 
			Description, 
			CategoryImage, 
			ParentCategoryId, 
			StatusId
	FROM
			Category
	WHERE
			CategoryId = @p_intCategoryId;
END
GO

