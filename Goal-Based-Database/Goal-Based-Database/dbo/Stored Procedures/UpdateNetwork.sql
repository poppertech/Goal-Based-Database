CREATE PROCEDURE UpdateNetwork
	@Id INT,
	@Name varchar(100)
AS
BEGIN

	UPDATE Network
	SET [Name] = @Name
	WHERE Id = @Id;

END
