CREATE PROCEDURE GetCashFlowsByNetworkId
	@NetworkId INT
AS
BEGIN

SELECT cash_flow.Id AS CashFlowId,
	   cash_flow.Cost AS Cost
FROM [CashFlow] AS cash_flow
WHERE cash_flow.NetworkId = @NetworkId
ORDER BY cash_flow.Id ASC

END