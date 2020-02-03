CREATE PROCEDURE SeedDistributions
AS
BEGIN

SET IDENTITY_INSERT [dbo].[Distribution] ON 

INSERT [dbo].[Distribution] ([Id], [NodeId], [Index], [Minimum], [Worst], [Likely], [Best], [Maximum]) VALUES (1, 1, 0, 50, 85, 105, 125, 150)

INSERT [dbo].[Distribution] ([Id], [NodeId], [Index], [Minimum], [Worst], [Likely], [Best], [Maximum]) VALUES (2, 2, 0, 50, 75, 110, 135, 150)

INSERT [dbo].[Distribution] ([Id], [NodeId], [Index], [Minimum], [Worst], [Likely], [Best], [Maximum]) VALUES (3, 3, 0, 50, 85, 105, 125, 150)

SET IDENTITY_INSERT [dbo].[Distribution] OFF

END
