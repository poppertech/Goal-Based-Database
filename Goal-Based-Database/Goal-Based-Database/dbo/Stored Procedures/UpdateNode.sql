CREATE PROCEDURE UpdateNode
	@Id INT,
	@Name VARCHAR(50),
	@ParentId INT = NULL,
	@InitialInvestment FLOAT = NULL,
	@InitialPrice FLOAT = NULL,
	@IsPortfolioComponent BIT
AS
BEGIN

	UPDATE Node SET 
		[Name] = @Name,
		ParentId = @ParentId, 
		InitialInvestment = @InitialInvestment, 
		InitialPrice = @InitialPrice, 
		IsPortfolioComponent = @IsPortfolioComponent
	WHERE Id = @Id;

END