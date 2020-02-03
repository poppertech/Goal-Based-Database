CREATE PROCEDURE SeedNetworks
AS
BEGIN

SET IDENTITY_INSERT [dbo].[Network] ON 

INSERT [dbo].[Network] ([Id], [Name], [Url]) VALUES (1, N'Choosing Investments Based On Retirement Goals', N'choosing-investments-based-on-retirement-goals')

INSERT [dbo].[Network] ([Id], [Name], [Url]) VALUES (2, N'Achieving Financial Freedom', N'achieving-financial-freedom')

INSERT [dbo].[Network] ([Id], [Name], [Url]) VALUES (3, N'Goal-Based Investment Comparison', N'goal-based-investment-comparison')

SET IDENTITY_INSERT [dbo].[Network] OFF


END
