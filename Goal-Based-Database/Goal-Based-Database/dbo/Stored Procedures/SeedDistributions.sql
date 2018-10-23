CREATE PROCEDURE SeedDistributions
AS
BEGIN

SET IDENTITY_INSERT Distribution ON
INSERT INTO Distribution(Id, NodeId, [Index], Minimum, Worst, Likely, Best, Maximum) 
VALUES(1,1,0, 50, 85, 105, 125, 150),
(2,2,0, 50, 85, 105, 125, 150),
(3,2,1, 50, 85, 105, 125, 150),
(4,2,2, 50, 85, 105, 125, 150),
(5,2,3, 50, 85, 105, 125, 150)
SET IDENTITY_INSERT Distribution OFF

END
