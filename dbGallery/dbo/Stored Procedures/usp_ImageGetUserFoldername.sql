CREATE PROCEDURE [dbo].[usp_ImageGetUserFoldername]
@p_chrUserEmail varchar(50)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT TOP 1 FolderName FROM Images WHERE UserEmail = @p_chrUserEmail;
END
GO

