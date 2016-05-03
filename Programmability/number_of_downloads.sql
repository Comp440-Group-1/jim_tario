USE [s16guest53]
GO

/****** Object:  StoredProcedure [dbo].[number_of_downloads]    Script Date: 5/2/2016 6:30:35 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Jim Tario
-- Create date: April 30, 2016
-- Description:	count the number of downloads
-- =============================================



CREATE PROCEDURE [dbo].[number_of_downloads]
	-- Add the parameters for the stored procedure here
	@release_id decimal(2,1)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

BEGIN TRANSACTION
BEGIN TRY
    
	SELECT COUNT(release_id), release_id FROM download
	WHERE release_id = @release_id  
	GROUP BY release_id

 COMMIT TRANSACTION
END TRY
BEGIN CATCH
    SELECT 
        ERROR_NUMBER() AS ErrorNumber,
        ERROR_SEVERITY() AS ErrorSeverity,
        ERROR_STATE() AS ErrorState,
        ERROR_PROCEDURE() AS ErrorProcedure,
        ERROR_LINE() AS ErrorLine,
        ERROR_MESSAGE() AS ErrorMessage
   
    ROLLBACK TRANSACTION
END CATCH
END


GO

