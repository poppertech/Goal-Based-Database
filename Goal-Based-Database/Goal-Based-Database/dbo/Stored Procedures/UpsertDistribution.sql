CREATE PROCEDURE UpsertDistribution
	@NodeId INT,
	@Distributions VARCHAR(MAX)
AS
BEGIN

	DECLARE @NewDistributions AS TABLE(Id INT, [Index] INT, Minimum FLOAT, Worst FLOAT, Likely FLOAT, Best FLOAT, Maximum FLOAT)
	
	INSERT INTO @NewDistributions
	SELECT 
		json_distributions.Id, 
		json_distributions.[Index], 
		json_distributions.Minimum, 
		json_distributions.Worst, 
		json_distributions.Likely, 
		json_distributions.Best, 
		json_distributions.Maximum
	FROM OPENJSON(@Distributions) WITH(
			Id INT '$.Id',
			[Index] INT '$.Index',
			Minimum FLOAT '$.Minimum',
			Worst FLOAT '$.Worst',
			Likely FLOAT '$.Likely',
			Best FLOAT '$.Best',
			Maximum FLOAT '$.Maximum'
	) AS json_distributions;

	MERGE INTO [Distribution] AS TARGET
	USING @NewDistributions AS SOURCE
	ON TARGET.Id = SOURCE.Id
	WHEN MATCHED THEN
	UPDATE 
		SET [Index] = SOURCE.[Index], 
		Minimum = SOURCE.Minimum, 
		Worst = SOURCE.Worst, 
		Likely = SOURCE.Likely, 
		Best = SOURCE.Best, 
		Maximum = SOURCE.Maximum
	WHEN NOT MATCHED BY TARGET THEN
	INSERT(NodeId, [Index], Minimum, Worst, Likely, Best, Maximum)
	VALUES(@NodeId, SOURCE.[Index], SOURCE.Minimum, SOURCE.Worst, SOURCE.Likely, SOURCE.Best, SOURCE.Maximum)
	WHEN NOT MATCHED BY SOURCE AND TARGET.NodeId = @NodeId THEN
	DELETE;

END
