USE [s16guest53]
GO
/****** Object:  Table [dbo].[address]    Script Date: 5/2/2016 6:17:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[address](
	[address_id] [int] IDENTITY(1,1) NOT NULL,
	[street_id] [int] NOT NULL,
	[city_id] [int] NOT NULL,
	[state_id] [int] NOT NULL,
	[zip_code_id] [int] NOT NULL,
	[country_id] [int] NOT NULL,
 CONSTRAINT [PK_address_1] PRIMARY KEY CLUSTERED 
(
	[address_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[branch]    Script Date: 5/2/2016 6:17:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[branch](
	[branch_id] [int] NOT NULL,
	[product_id] [int] NOT NULL,
	[release_id] [decimal](2, 1) NOT NULL,
	[branch_title] [varchar](32) NULL,
 CONSTRAINT [PK_branch] PRIMARY KEY CLUSTERED 
(
	[branch_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[city]    Script Date: 5/2/2016 6:17:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[city](
	[city_id] [int] IDENTITY(1,1) NOT NULL,
	[city_name] [varchar](32) NOT NULL,
 CONSTRAINT [PK_city] PRIMARY KEY CLUSTERED 
(
	[city_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[code_commit]    Script Date: 5/2/2016 6:17:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[code_commit](
	[commit_id] [int] NOT NULL,
	[commit_date] [date] NOT NULL,
	[branch_id] [int] NOT NULL,
	[commit_comment] [varchar](128) NULL,
 CONSTRAINT [PK_commit] PRIMARY KEY CLUSTERED 
(
	[commit_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[country]    Script Date: 5/2/2016 6:17:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[country](
	[country_id] [int] IDENTITY(1,1) NOT NULL,
	[country_name] [varchar](64) NOT NULL,
	[country_code] [char](2) NOT NULL,
 CONSTRAINT [PK_country] PRIMARY KEY CLUSTERED 
(
	[country_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[customer]    Script Date: 5/2/2016 6:17:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[customer](
	[customer_id] [int] IDENTITY(1,1) NOT NULL,
	[first_name] [varchar](32) NOT NULL,
	[last_name] [varchar](32) NOT NULL,
 CONSTRAINT [PK_customer] PRIMARY KEY CLUSTERED 
(
	[customer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[customer_address]    Script Date: 5/2/2016 6:17:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customer_address](
	[customer_id] [int] NOT NULL,
	[address_id] [int] NOT NULL,
 CONSTRAINT [PK_customer_address] PRIMARY KEY CLUSTERED 
(
	[customer_id] ASC,
	[address_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[customer_phone_number]    Script Date: 5/2/2016 6:17:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customer_phone_number](
	[customer_id] [int] NOT NULL,
	[phone_number_id] [int] NOT NULL,
 CONSTRAINT [PK_customer_contact] PRIMARY KEY CLUSTERED 
(
	[customer_id] ASC,
	[phone_number_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[customer_release]    Script Date: 5/2/2016 6:17:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customer_release](
	[release_id] [decimal](2, 1) NOT NULL,
	[customer_id] [int] NOT NULL,
	[version_id] [decimal](2, 1) NULL,
	[release_date] [date] NULL,
 CONSTRAINT [PK_customer_release_1] PRIMARY KEY CLUSTERED 
(
	[release_id] ASC,
	[customer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[download]    Script Date: 5/2/2016 6:17:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[download](
	[download_id] [int] NOT NULL,
	[release_id] [decimal](2, 1) NOT NULL,
	[download_date] [date] NOT NULL,
 CONSTRAINT [PK_download] PRIMARY KEY CLUSTERED 
(
	[download_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[email]    Script Date: 5/2/2016 6:17:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[email](
	[email_id] [int] IDENTITY(1,1) NOT NULL,
	[customer_id] [int] NOT NULL,
	[email_address] [varchar](62) NOT NULL,
 CONSTRAINT [PK_email] PRIMARY KEY CLUSTERED 
(
	[email_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[feature]    Script Date: 5/2/2016 6:17:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[feature](
	[feature_id] [int] NOT NULL,
	[feature_description] [varchar](128) NULL,
 CONSTRAINT [PK_feature] PRIMARY KEY CLUSTERED 
(
	[feature_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[feature_version]    Script Date: 5/2/2016 6:17:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[feature_version](
	[feature_id] [int] NOT NULL,
	[version_id] [decimal](2, 1) NOT NULL,
 CONSTRAINT [PK_feature_version] PRIMARY KEY CLUSTERED 
(
	[feature_id] ASC,
	[version_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[phone_number]    Script Date: 5/2/2016 6:17:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[phone_number](
	[phone_number_id] [int] IDENTITY(1,1) NOT NULL,
	[phone_number] [char](10) NOT NULL,
	[phone_type] [char](16) NOT NULL,
 CONSTRAINT [PK_phone] PRIMARY KEY CLUSTERED 
(
	[phone_number_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[product]    Script Date: 5/2/2016 6:17:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[product](
	[product_id] [int] NOT NULL,
	[product_name] [varchar](32) NOT NULL,
	[product_description] [varchar](128) NULL,
	[platform] [varchar](32) NULL,
 CONSTRAINT [PK_product] PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[product_version]    Script Date: 5/2/2016 6:17:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_version](
	[product_version] [decimal](2, 1) NOT NULL,
	[product_id] [int] NOT NULL,
	[version_id] [decimal](2, 1) NOT NULL,
 CONSTRAINT [PK_product_version] PRIMARY KEY CLUSTERED 
(
	[product_version] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[release]    Script Date: 5/2/2016 6:17:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[release](
	[release_id] [decimal](2, 1) NOT NULL,
	[product_id] [int] NOT NULL,
	[release_title] [varchar](32) NOT NULL,
	[release_description] [varchar](128) NULL,
	[type_of_release] [varchar](128) NOT NULL,
	[release_date] [date] NULL,
 CONSTRAINT [PK_release] PRIMARY KEY CLUSTERED 
(
	[release_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[street]    Script Date: 5/2/2016 6:17:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[street](
	[street_id] [int] IDENTITY(1,1) NOT NULL,
	[street_number] [smallint] NOT NULL,
	[street_name] [varchar](32) NOT NULL,
 CONSTRAINT [PK_address] PRIMARY KEY CLUSTERED 
(
	[street_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[subscription]    Script Date: 5/2/2016 6:17:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[subscription](
	[subscription_id] [int] IDENTITY(1,1) NOT NULL,
	[customer_id] [int] NOT NULL,
	[email_id] [int] NOT NULL,
	[password] [varchar](32) NOT NULL,
	[subscription_start_date] [date] NOT NULL,
	[subscription_end_date] [date] NOT NULL,
 CONSTRAINT [PK_subscription] PRIMARY KEY CLUSTERED 
(
	[subscription_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[us_state]    Script Date: 5/2/2016 6:17:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[us_state](
	[state_id] [int] IDENTITY(1,1) NOT NULL,
	[state_name] [varchar](16) NOT NULL,
	[state_code] [char](2) NOT NULL,
 CONSTRAINT [PK_state] PRIMARY KEY CLUSTERED 
(
	[state_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[version_info]    Script Date: 5/2/2016 6:17:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[version_info](
	[version_id] [decimal](2, 1) NOT NULL,
	[version_name] [char](16) NULL,
	[version_description] [varchar](128) NULL,
 CONSTRAINT [PK_version_1] PRIMARY KEY CLUSTERED 
(
	[version_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[zip_code]    Script Date: 5/2/2016 6:17:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[zip_code](
	[zip_code_id] [int] IDENTITY(1,1) NOT NULL,
	[zip_code_number] [char](9) NOT NULL,
 CONSTRAINT [PK_zip_code] PRIMARY KEY CLUSTERED 
(
	[zip_code_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[address] ON 

INSERT [dbo].[address] ([address_id], [street_id], [city_id], [state_id], [zip_code_id], [country_id]) VALUES (2, 1, 1, 1, 2, 1)
INSERT [dbo].[address] ([address_id], [street_id], [city_id], [state_id], [zip_code_id], [country_id]) VALUES (3, 2, 1, 1, 1, 1)
INSERT [dbo].[address] ([address_id], [street_id], [city_id], [state_id], [zip_code_id], [country_id]) VALUES (4, 3, 2, 1, 3, 1)
SET IDENTITY_INSERT [dbo].[address] OFF
INSERT [dbo].[branch] ([branch_id], [product_id], [release_id], [branch_title]) VALUES (12343, 2000, CAST(1.1 AS Decimal(2, 1)), N'Task 300 add new auto script')
INSERT [dbo].[branch] ([branch_id], [product_id], [release_id], [branch_title]) VALUES (23434, 2005, CAST(3.2 AS Decimal(2, 1)), N'Task 640 new button')
INSERT [dbo].[branch] ([branch_id], [product_id], [release_id], [branch_title]) VALUES (34343, 2006, CAST(2.4 AS Decimal(2, 1)), N'Add new zip codes to area')
SET IDENTITY_INSERT [dbo].[city] ON 

INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1, N'Northridge')
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (2, N'San Fernando')
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (3, N'Los Angeles')
SET IDENTITY_INSERT [dbo].[city] OFF
INSERT [dbo].[code_commit] ([commit_id], [commit_date], [branch_id], [commit_comment]) VALUES (500, CAST(0x493B0B00 AS Date), 12343, N'added new scripts to support centos 7,0')
INSERT [dbo].[code_commit] ([commit_id], [commit_date], [branch_id], [commit_comment]) VALUES (46464, CAST(0x513B0B00 AS Date), 34343, N'New zip codes added')
INSERT [dbo].[code_commit] ([commit_id], [commit_date], [branch_id], [commit_comment]) VALUES (501353, CAST(0x513B0B00 AS Date), 23434, N'New button added for better and faster UI')
SET IDENTITY_INSERT [dbo].[country] ON 

INSERT [dbo].[country] ([country_id], [country_name], [country_code]) VALUES (1, N'United States ', N'US')
INSERT [dbo].[country] ([country_id], [country_name], [country_code]) VALUES (2, N'Australia', N'AU')
INSERT [dbo].[country] ([country_id], [country_name], [country_code]) VALUES (3, N'Belgium', N'BE')
SET IDENTITY_INSERT [dbo].[country] OFF
SET IDENTITY_INSERT [dbo].[customer] ON 

INSERT [dbo].[customer] ([customer_id], [first_name], [last_name]) VALUES (1, N'Billy', N'Bob')
INSERT [dbo].[customer] ([customer_id], [first_name], [last_name]) VALUES (2, N'Michael ', N'Stuart')
INSERT [dbo].[customer] ([customer_id], [first_name], [last_name]) VALUES (3, N'Cristina', N'Aguilera')
SET IDENTITY_INSERT [dbo].[customer] OFF
INSERT [dbo].[customer_address] ([customer_id], [address_id]) VALUES (1, 2)
INSERT [dbo].[customer_address] ([customer_id], [address_id]) VALUES (2, 3)
INSERT [dbo].[customer_address] ([customer_id], [address_id]) VALUES (3, 4)
INSERT [dbo].[customer_phone_number] ([customer_id], [phone_number_id]) VALUES (1, 1)
INSERT [dbo].[customer_phone_number] ([customer_id], [phone_number_id]) VALUES (2, 2)
INSERT [dbo].[customer_phone_number] ([customer_id], [phone_number_id]) VALUES (3, 2)
INSERT [dbo].[customer_release] ([release_id], [customer_id], [version_id], [release_date]) VALUES (CAST(1.1 AS Decimal(2, 1)), 1, CAST(1.0 AS Decimal(2, 1)), CAST(0x513B0B00 AS Date))
INSERT [dbo].[customer_release] ([release_id], [customer_id], [version_id], [release_date]) VALUES (CAST(2.4 AS Decimal(2, 1)), 2, CAST(2.0 AS Decimal(2, 1)), CAST(0x513B0B00 AS Date))
INSERT [dbo].[customer_release] ([release_id], [customer_id], [version_id], [release_date]) VALUES (CAST(3.2 AS Decimal(2, 1)), 3, CAST(3.0 AS Decimal(2, 1)), CAST(0x513B0B00 AS Date))
INSERT [dbo].[download] ([download_id], [release_id], [download_date]) VALUES (23434, CAST(2.4 AS Decimal(2, 1)), CAST(0x523B0B00 AS Date))
INSERT [dbo].[download] ([download_id], [release_id], [download_date]) VALUES (23535, CAST(1.1 AS Decimal(2, 1)), CAST(0x523B0B00 AS Date))
INSERT [dbo].[download] ([download_id], [release_id], [download_date]) VALUES (23543, CAST(3.2 AS Decimal(2, 1)), CAST(0x2D3B0B00 AS Date))
INSERT [dbo].[download] ([download_id], [release_id], [download_date]) VALUES (23545, CAST(3.2 AS Decimal(2, 1)), CAST(0x523B0B00 AS Date))
INSERT [dbo].[download] ([download_id], [release_id], [download_date]) VALUES (33435, CAST(1.1 AS Decimal(2, 1)), CAST(0x3A3B0B00 AS Date))
INSERT [dbo].[download] ([download_id], [release_id], [download_date]) VALUES (34355, CAST(1.1 AS Decimal(2, 1)), CAST(0x3A3B0B00 AS Date))
INSERT [dbo].[download] ([download_id], [release_id], [download_date]) VALUES (44635, CAST(1.1 AS Decimal(2, 1)), CAST(0x4C3B0B00 AS Date))
INSERT [dbo].[download] ([download_id], [release_id], [download_date]) VALUES (235353, CAST(2.4 AS Decimal(2, 1)), CAST(0x363B0B00 AS Date))
SET IDENTITY_INSERT [dbo].[email] ON 

INSERT [dbo].[email] ([email_id], [customer_id], [email_address]) VALUES (1, 1, N'billy.bob@gmail.com')
INSERT [dbo].[email] ([email_id], [customer_id], [email_address]) VALUES (2, 2, N'm.stewart@mozaic.com')
INSERT [dbo].[email] ([email_id], [customer_id], [email_address]) VALUES (3, 3, N'xtina@aol.com')
SET IDENTITY_INSERT [dbo].[email] OFF
INSERT [dbo].[feature] ([feature_id], [feature_description]) VALUES (1000, N'Add mobile capability')
INSERT [dbo].[feature] ([feature_id], [feature_description]) VALUES (1001, N'New ajax calls for UI')
INSERT [dbo].[feature] ([feature_id], [feature_description]) VALUES (1002, N'Automatic installation of LAMP stack')
INSERT [dbo].[feature_version] ([feature_id], [version_id]) VALUES (1000, CAST(1.0 AS Decimal(2, 1)))
INSERT [dbo].[feature_version] ([feature_id], [version_id]) VALUES (1001, CAST(2.0 AS Decimal(2, 1)))
INSERT [dbo].[feature_version] ([feature_id], [version_id]) VALUES (1002, CAST(3.0 AS Decimal(2, 1)))
SET IDENTITY_INSERT [dbo].[phone_number] ON 

INSERT [dbo].[phone_number] ([phone_number_id], [phone_number], [phone_type]) VALUES (1, N'8185329393', N'cell phone      ')
INSERT [dbo].[phone_number] ([phone_number_id], [phone_number], [phone_type]) VALUES (2, N'7146352288', N'home phone      ')
INSERT [dbo].[phone_number] ([phone_number_id], [phone_number], [phone_type]) VALUES (3, N'5203536788', N'cell phone      ')
SET IDENTITY_INSERT [dbo].[phone_number] OFF
INSERT [dbo].[product] ([product_id], [product_name], [product_description], [platform]) VALUES (2000, N'Automation Build', N'Automate all simple installations and process', N'Linux')
INSERT [dbo].[product] ([product_id], [product_name], [product_description], [platform]) VALUES (2005, N'NodeJS UI', N'Framework for NodeJS', N'Windows')
INSERT [dbo].[product] ([product_id], [product_name], [product_description], [platform]) VALUES (2006, N'Biosphere', N'Earth project to better help the environment', N'Linux')
INSERT [dbo].[product_version] ([product_version], [product_id], [version_id]) VALUES (CAST(3.0 AS Decimal(2, 1)), 2000, CAST(1.0 AS Decimal(2, 1)))
INSERT [dbo].[product_version] ([product_version], [product_id], [version_id]) VALUES (CAST(3.2 AS Decimal(2, 1)), 2005, CAST(2.0 AS Decimal(2, 1)))
INSERT [dbo].[product_version] ([product_version], [product_id], [version_id]) VALUES (CAST(3.5 AS Decimal(2, 1)), 2006, CAST(3.0 AS Decimal(2, 1)))
INSERT [dbo].[release] ([release_id], [product_id], [release_title], [release_description], [type_of_release], [release_date]) VALUES (CAST(1.1 AS Decimal(2, 1)), 2000, N'Overhaul of all scripts', N'Changed server configuration from ubuntu 14.04 to 16.04', N'new product release', CAST(0x513B0B00 AS Date))
INSERT [dbo].[release] ([release_id], [product_id], [release_title], [release_description], [type_of_release], [release_date]) VALUES (CAST(2.4 AS Decimal(2, 1)), 2006, N'New areas added', N'New areas around California have been updated', N'new product release', CAST(0x513B0B00 AS Date))
INSERT [dbo].[release] ([release_id], [product_id], [release_title], [release_description], [type_of_release], [release_date]) VALUES (CAST(3.2 AS Decimal(2, 1)), 2005, N'Support Microsoft Edge', N'App is now compatible with Microsoft Edge browser', N'new product release', CAST(0x513B0B00 AS Date))
INSERT [dbo].[release] ([release_id], [product_id], [release_title], [release_description], [type_of_release], [release_date]) VALUES (CAST(3.3 AS Decimal(2, 1)), 2005, N'Support Microsoft Edge bug fix', N'App is now compatible with Microsoft Edge', N'bug-fix release', CAST(0x533B0B00 AS Date))
SET IDENTITY_INSERT [dbo].[street] ON 

INSERT [dbo].[street] ([street_id], [street_number], [street_name]) VALUES (1, 520, N'Walnut st.')
INSERT [dbo].[street] ([street_id], [street_number], [street_name]) VALUES (2, 200, N'Michell ')
INSERT [dbo].[street] ([street_id], [street_number], [street_name]) VALUES (3, 20013, N'Netwon ')
SET IDENTITY_INSERT [dbo].[street] OFF
SET IDENTITY_INSERT [dbo].[subscription] ON 

INSERT [dbo].[subscription] ([subscription_id], [customer_id], [email_id], [password], [subscription_start_date], [subscription_end_date]) VALUES (1, 1, 1, N'super_secure_password', CAST(0xDB3A0B00 AS Date), CAST(0xB63D0B00 AS Date))
INSERT [dbo].[subscription] ([subscription_id], [customer_id], [email_id], [password], [subscription_start_date], [subscription_end_date]) VALUES (3, 2, 2, N'not_so_secure', CAST(0x79380B00 AS Date), CAST(0xC13C0B00 AS Date))
INSERT [dbo].[subscription] ([subscription_id], [customer_id], [email_id], [password], [subscription_start_date], [subscription_end_date]) VALUES (4, 3, 3, N'easy_password', CAST(0x75360B00 AS Date), CAST(0x973D0B00 AS Date))
SET IDENTITY_INSERT [dbo].[subscription] OFF
SET IDENTITY_INSERT [dbo].[us_state] ON 

INSERT [dbo].[us_state] ([state_id], [state_name], [state_code]) VALUES (1, N'California', N'CA')
INSERT [dbo].[us_state] ([state_id], [state_name], [state_code]) VALUES (2, N'New York', N'NY')
INSERT [dbo].[us_state] ([state_id], [state_name], [state_code]) VALUES (3, N'Nevada', N'NV')
SET IDENTITY_INSERT [dbo].[us_state] OFF
INSERT [dbo].[version_info] ([version_id], [version_name], [version_description]) VALUES (CAST(1.0 AS Decimal(2, 1)), N'2000            ', N'version release 2015')
INSERT [dbo].[version_info] ([version_id], [version_name], [version_description]) VALUES (CAST(2.0 AS Decimal(2, 1)), N'2005            ', N'version from early january')
INSERT [dbo].[version_info] ([version_id], [version_name], [version_description]) VALUES (CAST(3.0 AS Decimal(2, 1)), N'2006            ', N'New update information for this version')
SET IDENTITY_INSERT [dbo].[zip_code] ON 

INSERT [dbo].[zip_code] ([zip_code_id], [zip_code_number]) VALUES (1, N'91325    ')
INSERT [dbo].[zip_code] ([zip_code_id], [zip_code_number]) VALUES (2, N'91324    ')
INSERT [dbo].[zip_code] ([zip_code_id], [zip_code_number]) VALUES (3, N'91326    ')
SET IDENTITY_INSERT [dbo].[zip_code] OFF
ALTER TABLE [dbo].[address]  WITH CHECK ADD  CONSTRAINT [FK_address_city] FOREIGN KEY([city_id])
REFERENCES [dbo].[city] ([city_id])
GO
ALTER TABLE [dbo].[address] CHECK CONSTRAINT [FK_address_city]
GO
ALTER TABLE [dbo].[address]  WITH CHECK ADD  CONSTRAINT [FK_address_country] FOREIGN KEY([country_id])
REFERENCES [dbo].[country] ([country_id])
GO
ALTER TABLE [dbo].[address] CHECK CONSTRAINT [FK_address_country]
GO
ALTER TABLE [dbo].[address]  WITH CHECK ADD  CONSTRAINT [FK_address_state] FOREIGN KEY([state_id])
REFERENCES [dbo].[us_state] ([state_id])
GO
ALTER TABLE [dbo].[address] CHECK CONSTRAINT [FK_address_state]
GO
ALTER TABLE [dbo].[address]  WITH CHECK ADD  CONSTRAINT [FK_address_street] FOREIGN KEY([street_id])
REFERENCES [dbo].[street] ([street_id])
GO
ALTER TABLE [dbo].[address] CHECK CONSTRAINT [FK_address_street]
GO
ALTER TABLE [dbo].[address]  WITH CHECK ADD  CONSTRAINT [FK_address_zip_code] FOREIGN KEY([zip_code_id])
REFERENCES [dbo].[zip_code] ([zip_code_id])
GO
ALTER TABLE [dbo].[address] CHECK CONSTRAINT [FK_address_zip_code]
GO
ALTER TABLE [dbo].[branch]  WITH CHECK ADD  CONSTRAINT [FK_branch_release] FOREIGN KEY([release_id])
REFERENCES [dbo].[release] ([release_id])
GO
ALTER TABLE [dbo].[branch] CHECK CONSTRAINT [FK_branch_release]
GO
ALTER TABLE [dbo].[code_commit]  WITH CHECK ADD  CONSTRAINT [FK_commit_branch] FOREIGN KEY([branch_id])
REFERENCES [dbo].[branch] ([branch_id])
GO
ALTER TABLE [dbo].[code_commit] CHECK CONSTRAINT [FK_commit_branch]
GO
ALTER TABLE [dbo].[customer_address]  WITH CHECK ADD  CONSTRAINT [FK_customer_address_address] FOREIGN KEY([address_id])
REFERENCES [dbo].[address] ([address_id])
GO
ALTER TABLE [dbo].[customer_address] CHECK CONSTRAINT [FK_customer_address_address]
GO
ALTER TABLE [dbo].[customer_address]  WITH CHECK ADD  CONSTRAINT [FK_customer_address_customer] FOREIGN KEY([customer_id])
REFERENCES [dbo].[customer] ([customer_id])
GO
ALTER TABLE [dbo].[customer_address] CHECK CONSTRAINT [FK_customer_address_customer]
GO
ALTER TABLE [dbo].[customer_phone_number]  WITH CHECK ADD  CONSTRAINT [FK_customer_phone_number] FOREIGN KEY([phone_number_id])
REFERENCES [dbo].[phone_number] ([phone_number_id])
GO
ALTER TABLE [dbo].[customer_phone_number] CHECK CONSTRAINT [FK_customer_phone_number]
GO
ALTER TABLE [dbo].[customer_phone_number]  WITH CHECK ADD  CONSTRAINT [FK_customer_phone_number_customer] FOREIGN KEY([customer_id])
REFERENCES [dbo].[customer] ([customer_id])
GO
ALTER TABLE [dbo].[customer_phone_number] CHECK CONSTRAINT [FK_customer_phone_number_customer]
GO
ALTER TABLE [dbo].[customer_release]  WITH CHECK ADD  CONSTRAINT [FK_customer_release_customer] FOREIGN KEY([customer_id])
REFERENCES [dbo].[customer] ([customer_id])
GO
ALTER TABLE [dbo].[customer_release] CHECK CONSTRAINT [FK_customer_release_customer]
GO
ALTER TABLE [dbo].[download]  WITH CHECK ADD  CONSTRAINT [FK_download_release] FOREIGN KEY([release_id])
REFERENCES [dbo].[release] ([release_id])
GO
ALTER TABLE [dbo].[download] CHECK CONSTRAINT [FK_download_release]
GO
ALTER TABLE [dbo].[email]  WITH CHECK ADD  CONSTRAINT [FK_email_customer] FOREIGN KEY([customer_id])
REFERENCES [dbo].[customer] ([customer_id])
GO
ALTER TABLE [dbo].[email] CHECK CONSTRAINT [FK_email_customer]
GO
ALTER TABLE [dbo].[feature_version]  WITH CHECK ADD  CONSTRAINT [FK_feature_version_feature] FOREIGN KEY([feature_id])
REFERENCES [dbo].[feature] ([feature_id])
GO
ALTER TABLE [dbo].[feature_version] CHECK CONSTRAINT [FK_feature_version_feature]
GO
ALTER TABLE [dbo].[release]  WITH CHECK ADD  CONSTRAINT [FK_release_product] FOREIGN KEY([product_id])
REFERENCES [dbo].[product] ([product_id])
GO
ALTER TABLE [dbo].[release] CHECK CONSTRAINT [FK_release_product]
GO
ALTER TABLE [dbo].[subscription]  WITH CHECK ADD  CONSTRAINT [FK_subscription_customer] FOREIGN KEY([customer_id])
REFERENCES [dbo].[customer] ([customer_id])
GO
ALTER TABLE [dbo].[subscription] CHECK CONSTRAINT [FK_subscription_customer]
GO
ALTER TABLE [dbo].[subscription]  WITH CHECK ADD  CONSTRAINT [FK_subscription_email] FOREIGN KEY([email_id])
REFERENCES [dbo].[email] ([email_id])
GO
ALTER TABLE [dbo].[subscription] CHECK CONSTRAINT [FK_subscription_email]
GO
