CREATE PROCEDURE SeedNodes
AS
BEGIN

SET IDENTITY_INSERT Node ON
INSERT INTO Node(Id, [Name], NetworkId, ParentId, InitialInvestment, InitialPrice, IsPortfolioComponent) 
VALUES
(1, 'Stocks', 1, NULL, 400000, 100, 1),
(2, 'Emerging', 2, NULL, .01, 100, 1)
SET IDENTITY_INSERT Node OFF

END
