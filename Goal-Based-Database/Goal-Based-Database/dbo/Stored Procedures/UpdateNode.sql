CREATE PROCEDURE UpdateNode
	@Id INT,
	@ParentId INT = NULL,
	@InitialInvestment FLOAT = NULL,
	@InitialPrice FLOAT = NULL,
	@IsPortfolioComponent BIT
AS
BEGIN

	UPDATE Node SET 
		ParentId = @ParentId, 
		InitialInvestment = @InitialInvestment, 
		InitialPrice = @InitialPrice, 
		IsPortfolioComponent = @IsPortfolioComponent
	WHERE Id = @Id;

END