CREATE PROCEDURE SeedNodes
AS
BEGIN

SET IDENTITY_INSERT Node ON
INSERT INTO Node(Id, [Name], NetworkId, ParentId, InitialInvestment, InitialPrice, IsPortfolioComponent) 
VALUES(1, 'Parent', 1,NULL, NULL, NULL, 0),(2,'Child',1,1, 200000, 100, 1)
SET IDENTITY_INSERT Node OFF

END
