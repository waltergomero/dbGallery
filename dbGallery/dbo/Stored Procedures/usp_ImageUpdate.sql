CREATE PROCEDURE [dbo].[usp_ImageUpdate]
@p_intImageId INT,
@p_intCategoryId INT

AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @ErrorMessage varchar(255)

	BEGIN TRY
		UPDATE Images SET CategoryId = @p_intCategoryId
			   WHERE ImageId = @p_intImageId;
	    END TRY
	BEGIN CATCH
		SELECT @ErrorMessage = ERROR_MESSAGE()
		    RAISERROR (@ErrorMessage, 10, 1);
	END CATCH;
END
GO