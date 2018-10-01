CREATE PROCEDURE UpsertCashFlow
	@NetworkId INT,
	@CashFlows VARCHAR(MAX)
AS
BEGIN

	DECLARE @NewCashFlows As TABLE(Id INT, Cost FLOAT);

	INSERT INTO @NewCashFlows
	SELECT json_cash_flows.Id, json_cash_flows.Cost
	FROM OPENJSON(@CashFlows) WITH(
		Id INT '$.Id',
		Cost FLOAT '$.Cost'
	) AS json_cash_flows;

	MERGE INTO CashFlow AS TARGET
	USING @NewCashFlows AS SOURCE
	ON TARGET.Id = SOURCE.Id AND @NetworkId = Target.NetworkId
	WHEN MATCHED AND TARGET.Cost <> SOURCE.Cost THEN
	UPDATE SET Cost = source.Cost
	WHEN NOT MATCHED BY TARGET THEN
	INSERT(NetworkId, Cost) VALUES(@NetworkId, Source.Cost)
	WHEN NOT MATCHED BY SOURCE AND Target.NetworkId = @NetworkId THEN
	DELETE; 
	
END