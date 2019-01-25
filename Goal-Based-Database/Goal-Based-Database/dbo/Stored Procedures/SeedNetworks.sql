CREATE PROCEDURE SeedNetworks
AS
BEGIN

SET IDENTITY_INSERT Network ON
INSERT INTO Network(Id, Name, Url) VALUES
(1, 'Choosing Investments Based On Retirement Goals', 'choosing-investments-based-on-retirement-goals'),
(2, 'Achieving Financial Freedom', 'achieving-financial-freedom')
SET IDENTITY_INSERT Network OFF


END
