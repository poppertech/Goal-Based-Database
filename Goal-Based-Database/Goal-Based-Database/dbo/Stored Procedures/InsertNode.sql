CREATE PROCEDURE InsertNode
	@NetworkId INT,
	@Name VARCHAR(50),
	@ParentId INT = NULL,
	@InitialInvestment FLOAT = NULL,
	@InitialPrice FLOAT = NULL,
	@IsPortfolioComponent BIT,
	@Id INT OUTPUT
AS
BEGIN

	INSERT INTO Node(NetworkId, [Name], ParentId, InitialInvestment, InitialPrice, IsPortfolioComponent) 
	VALUES(@NetworkId, @Name, @ParentId, @InitialInvestment, @InitialPrice, @IsPortfolioComponent);

	SELECT @Id = SCOPE_IDENTITY();

END
