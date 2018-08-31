CREATE PROCEDURE [dbo].[usp_CategoryList]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT CategoryId,
		   CategoryName,
		   Description,
		   ParentCategoryId,
		   CategoryImage,
		   StatusId
	FROM
		Category
	ORDER BY CategoryName;

END

