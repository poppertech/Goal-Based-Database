CREATE PROCEDURE GetNetworks
AS
BEGIN

	SELECT 
		Id AS Id,
		[Name] AS [Name]
	FROM Network

END
