/*The users are without login, I had issues setting it up with credentials, I am aware it is not the safe way
but for the scope of this class, I will leave as is.*/

USE [s16guest53]
GO
/****** Object:  User [admin]    Script Date: 5/2/2016 6:08:25 PM ******/
CREATE USER [admin] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[db_accessadmin]
GO
/****** Object:  User [appuser]    Script Date: 5/2/2016 6:08:26 PM ******/
CREATE USER [appuser] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[db_datareader]
GO
/****** Object:  User [s16guest53]    Script Date: 5/2/2016 6:08:26 PM ******/
CREATE USER [s16guest53] FOR LOGIN [s16guest53] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [admin]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [admin]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [admin]
GO
ALTER ROLE [db_datareader] ADD MEMBER [appuser]
GO
ALTER ROLE [db_owner] ADD MEMBER [s16guest53]
GO
