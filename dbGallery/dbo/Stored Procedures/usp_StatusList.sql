﻿CREATE PROCEDURE [dbo].[usp_StatusList]
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT StatusId, StatusName, StatusTypeId FROM Status;
END
