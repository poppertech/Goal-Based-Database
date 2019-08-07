CREATE PROCEDURE GetNodeByUrl
	@Url VARCHAR(200)
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
	WHERE [node].Url = @Url

END
