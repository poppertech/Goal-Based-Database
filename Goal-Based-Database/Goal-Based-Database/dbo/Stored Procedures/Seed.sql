CREATE PROCEDURE Seed
AS
BEGIN

EXEC SeedNetworks
EXEC SeedCashFlows
EXEC SeedNodes
EXEC SeedDistributions

END
