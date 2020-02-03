CREATE PROCEDURE SeedNodes
AS
BEGIN

SET IDENTITY_INSERT [dbo].[Node] ON 

INSERT [dbo].[Node] ([Id], [Name], [NetworkId], [ParentId], [InitialInvestment], [InitialPrice], [IsPortfolioComponent], [Url]) VALUES (1, N'Stocks', 1, NULL, 400000, 100, 1, N'stocks')

INSERT [dbo].[Node] ([Id], [Name], [NetworkId], [ParentId], [InitialInvestment], [InitialPrice], [IsPortfolioComponent], [Url]) VALUES (2, N'Emerging Markets', 2, NULL, 0.01, 100, 1, N'emerging-markets')

INSERT [dbo].[Node] ([Id], [Name], [NetworkId], [ParentId], [InitialInvestment], [InitialPrice], [IsPortfolioComponent], [Url]) VALUES (3, N'S&P 500', 3, NULL, 0.01, 100, 1, N's&p-500')

SET IDENTITY_INSERT [dbo].[Node] OFF

END
