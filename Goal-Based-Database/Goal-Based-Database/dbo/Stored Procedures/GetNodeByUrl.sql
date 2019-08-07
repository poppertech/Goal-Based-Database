CREATE PROCEDURE GetNodeByUrl
	@NodeUrl VARCHAR(200),
	@NetworkUrl VARCHAR(200)
AS
BEGIN

	SELECT
		[node].Id AS NodeId,
		[node].Name AS NodeName,
		[node].Url AS NodeUrl,
		[node].ParentId AS ParentId,
		[node].InitialInvestment AS InitialInvestment,
		[node].InitialPrice AS InitialPrice,
		[node].IsPortfolioComponent AS IsPortfolioComponent
	FROM [Node] AS [node]
	JOIN [Network] AS [network]
	ON [node].NetworkId = [network].Id
	WHERE [node].Url = @NodeUrl
	AND [network].Url = @NetworkUrl

END
