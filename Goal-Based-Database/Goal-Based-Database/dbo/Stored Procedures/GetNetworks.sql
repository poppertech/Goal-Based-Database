CREATE PROCEDURE GetNetworks
	@Url varchar(200) = NULL
AS
BEGIN

	SELECT 
		Id AS Id,
		[Name] AS [Name],
		[Url] AS [Url]
	FROM Network
	WHERE @Url = NULL OR @Url = [Url]

END
