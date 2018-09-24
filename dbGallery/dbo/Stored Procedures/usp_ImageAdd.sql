CREATE PROCEDURE [dbo].[usp_ImageAdd]
@p_intCategoryId INT,
@p_chrImageName VARCHAR(50),
@p_chrUserEmail VARCHAR(50),
@p_chrFormat CHAR(2),
@p_chrFolderName VARCHAR(50)

AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @ErrorMessage varchar(255)

	BEGIN TRY
		INSERT INTO Images(ImageName, [Format], CategoryId, FolderName, UserEmail)
				   VALUES (@p_chrImageName, @p_chrFormat, @p_intCategoryId, @p_chrFolderName, @p_chrUserEmail)
	    END TRY
	BEGIN CATCH
		SELECT @ErrorMessage = ERROR_MESSAGE()
		    RAISERROR (@ErrorMessage, 10, 1);
	END CATCH;
END
GO

