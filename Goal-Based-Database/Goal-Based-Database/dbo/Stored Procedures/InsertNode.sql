CREATE PROCEDURE InsertNode
	@NetworkId INT,
	@ParentId INT = NULL,
	@InitialInvestment FLOAT = NULL,
	@InitialPrice FLOAT = NULL,
	@IsPortfolioComponent BIT,
	@Id INT OUTPUT
AS
BEGIN

	INSERT INTO Node(NetworkId, ParentId, InitialInvestment, InitialPrice, IsPortfolioComponent) 
	VALUES(@NetworkId, @ParentId, @InitialInvestment, @InitialPrice, @IsPortfolioComponent);

	SELECT @Id = SCOPE_IDENTITY();

END
