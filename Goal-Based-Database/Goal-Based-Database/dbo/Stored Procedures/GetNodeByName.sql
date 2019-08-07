CREATE PROCEDURE GetNodeByName
	@NodeName VARCHAR(50)
AS
BEGIN

	SELECT
		[node].Id AS NodeId,
		[node].Name AS NodeName,
		[node].ParentId AS ParentId,
		[node].InitialInvestment AS InitialInvestment,
		[node].InitialPrice AS InitialPrice,
		[node].IsPortfolioComponent AS IsPortfolioComponent
	FROM [Node] AS [node]
	WHERE [node].Name = @NodeName

END
