CREATE PROCEDURE InsertNetwork
	@Name varchar(100),
	@Url varchar(200),
	@Id INT OUTPUT
AS
BEGIN

	INSERT INTO Network(Name, Url)
	VALUES (@Name, @Url)

	SELECT @Id = SCOPE_IDENTITY();

END
