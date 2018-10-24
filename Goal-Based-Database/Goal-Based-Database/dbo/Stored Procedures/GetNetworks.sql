CREATE PROCEDURE GetNetworks
AS
BEGIN

	SELECT 
		Id AS Id,
		[Name] AS [Name],
		[Url] AS [Url]
	FROM Network

END
