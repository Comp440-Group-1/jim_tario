USE [s16guest53]
GO

/****** Object:  StoredProcedure [dbo].[update_product_version]    Script Date: 5/2/2016 6:31:08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Jim Tario
-- Create date: April 30, 2018
-- Description:	Update product version
-- =============================================



CREATE PROCEDURE [dbo].[update_product_version]
	-- Add the parameters for the stored procedure here
	@version_id decimal(2,1),
	@product_id int,
	@product_version decimal(2,1),
	@new_product_version decimal(2,1)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

BEGIN TRANSACTION
BEGIN TRY
    UPDATE product_version 
	SET product_version = @new_product_version
	WHERE product_id = @product_id AND version_id = @version_id

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

