USE [s16guest53]
GO

/****** Object:  StoredProcedure [dbo].[insert_new_customer]    Script Date: 5/2/2016 11:17:58 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Jim Tario
-- Create date: April 30, 2016
-- Description:	Insert new values to customer table
-- =============================================

CREATE PROCEDURE [dbo].[insert_new_customer]
	-- Add the parameters for the stored procedure here
	@first_name varchar(32),
	@last_name varchar(32)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

BEGIN TRANSACTION
BEGIN TRY
   
   INSERT INTO customer
   VALUES (@first_name, @last_name)

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

