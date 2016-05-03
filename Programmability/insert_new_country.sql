USE [s16guest53]
GO

/****** Object:  StoredProcedure [dbo].[insert_new_country]    Script Date: 5/2/2016 6:30:20 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Jim Tario
-- Create date: April 30, 2016
-- Description:	Insert new values to country table
-- =============================================



CREATE PROCEDURE [dbo].[insert_new_country]
	-- Add the parameters for the stored procedure here
	@country_name varchar(64),
	@country_code char(2)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

BEGIN TRANSACTION
BEGIN TRY
   
   INSERT INTO country
   VALUES (@country_name, @country_code)

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

