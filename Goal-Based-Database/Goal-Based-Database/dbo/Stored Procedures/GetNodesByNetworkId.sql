CREATE PROCEDURE GetNodesByNetworkId
	@NetworkId INT
AS
BEGIN

	SELECT 
		[node].Id AS NodeId,
		[node].Name AS NodeName,
		[node].Url AS NodeUrl,
		[node].ParentId AS ParentId,
		[node].InitialInvestment AS InitialInvestment,
		[node].InitialPrice AS InitialPrice,
		[node].IsPortfolioComponent AS IsPortfolioComponent,
		[distribution].Id AS DistributionId,
		[distribution].[Index] AS DistributionIndex,
		[distribution].Minimum AS Minimum,
		[distribution].Worst AS Worst,
		[distribution].Likely AS Likely,
		[distribution].Best AS Best,
		[distribution].Maximum AS Maximum
	FROM [Node] AS [node]
	JOIN [Distribution] AS [distribution]
	ON [distribution].NodeId = [node].Id
	WHERE [node].NetworkId = @NetworkId
	ORDER BY NodeId ASC, DistributionIndex ASC

END