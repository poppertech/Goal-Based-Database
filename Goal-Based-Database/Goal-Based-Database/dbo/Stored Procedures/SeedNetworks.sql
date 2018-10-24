CREATE PROCEDURE SeedNetworks
AS
BEGIN

SET IDENTITY_INSERT Network ON
INSERT INTO Network(Id, Name, Url) VALUES(1, 'TestNetwork', 'test-network')
SET IDENTITY_INSERT Network OFF


END
