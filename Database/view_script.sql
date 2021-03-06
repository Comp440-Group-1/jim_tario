USE [s16guest53]
GO
/****** Object:  View [dbo].[customer_full_info]    Script Date: 5/2/2016 6:11:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[customer_full_info]
AS
SELECT        dbo.customer.first_name, dbo.customer.last_name, dbo.phone_number.phone_number, dbo.street.street_number, dbo.street.street_name, dbo.city.city_name, dbo.us_state.state_code, 
                         dbo.zip_code.zip_code_number, dbo.country.country_code
FROM            dbo.customer INNER JOIN
                         dbo.customer_phone_number ON dbo.customer.customer_id = dbo.customer_phone_number.customer_id INNER JOIN
                         dbo.phone_number ON dbo.customer_phone_number.phone_number_id = dbo.phone_number.phone_number_id INNER JOIN
                         dbo.customer_address ON dbo.customer.customer_id = dbo.customer_address.customer_id INNER JOIN
                         dbo.address ON dbo.customer_address.address_id = dbo.address.address_id INNER JOIN
                         dbo.street ON dbo.address.street_id = dbo.street.street_id INNER JOIN
                         dbo.city ON dbo.address.city_id = dbo.city.city_id INNER JOIN
                         dbo.us_state ON dbo.address.state_id = dbo.us_state.state_id INNER JOIN
                         dbo.zip_code ON dbo.address.zip_code_id = dbo.zip_code.zip_code_id INNER JOIN
                         dbo.country ON dbo.address.country_id = dbo.country.country_id

GO
/****** Object:  View [dbo].[release_information]    Script Date: 5/2/2016 6:11:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[release_information]
AS
SELECT        dbo.customer.first_name, dbo.product.product_name, dbo.release.release_id, dbo.release.release_title
FROM            dbo.customer_release INNER JOIN
                         dbo.release ON dbo.customer_release.release_id = dbo.release.release_id INNER JOIN
                         dbo.product ON dbo.release.product_id = dbo.product.product_id INNER JOIN
                         dbo.customer ON dbo.customer_release.customer_id = dbo.customer.customer_id

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[20] 2[16] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "customer"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 119
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "phone_number"
            Begin Extent = 
               Top = 9
               Left = 556
               Bottom = 122
               Right = 741
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "customer_phone_number"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 102
               Right = 431
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "customer_address"
            Begin Extent = 
               Top = 154
               Left = 569
               Bottom = 250
               Right = 739
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "street"
            Begin Extent = 
               Top = 209
               Left = 79
               Bottom = 322
               Right = 249
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "address"
            Begin Extent = 
               Top = 162
               Left = 332
               Bottom = 292
               Right = 502
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "city"
            Begin Extent = 
               Top = 6
               Left = 779
               Bottom = 102
               Right = 949
            End
         ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'customer_full_info'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'   DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "us_state"
            Begin Extent = 
               Top = 6
               Left = 987
               Bottom = 119
               Right = 1157
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "zip_code"
            Begin Extent = 
               Top = 102
               Left = 779
               Bottom = 198
               Right = 961
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "country"
            Begin Extent = 
               Top = 120
               Left = 999
               Bottom = 233
               Right = 1169
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 10
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'customer_full_info'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'customer_full_info'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "product"
            Begin Extent = 
               Top = 29
               Left = 124
               Bottom = 142
               Right = 319
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "customer_release"
            Begin Extent = 
               Top = 160
               Left = 595
               Bottom = 256
               Right = 765
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "release"
            Begin Extent = 
               Top = 15
               Left = 483
               Bottom = 145
               Right = 672
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "customer"
            Begin Extent = 
               Top = 6
               Left = 710
               Bottom = 119
               Right = 880
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 2160
         Width = 2820
         Width = 2790
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
 ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'release_information'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'     End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'release_information'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'release_information'
GO
