CREATE PROCEDURE [dbo].[usp_ImageDelete]
@p_intImageId INT

AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @ErrorMessage varchar(255)

	BEGIN TRY
		DELETE FROM Images WHERE ImageId = @p_intImageId;
	    END TRY
	BEGIN CATCH
		SELECT @ErrorMessage = ERROR_MESSAGE()
		    RAISERROR (@ErrorMessage, 10, 1);
	END CATCH;
END
GO
