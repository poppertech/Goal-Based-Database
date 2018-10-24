CREATE PROCEDURE UpdateNetwork
	@Id INT,
	@Name varchar(100),
	@Url varchar(200)
AS
BEGIN

	UPDATE Network
	SET [Name] = @Name,
	[Url] = @Url
	WHERE Id = @Id;

END
