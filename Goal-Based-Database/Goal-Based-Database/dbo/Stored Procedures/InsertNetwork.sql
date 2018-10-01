﻿CREATE PROCEDURE InsertNetwork
	@Name varchar(100),
	@Id INT OUTPUT
AS
BEGIN

	INSERT INTO Network(Name)
	VALUES (@Name)

	SELECT @Id = SCOPE_IDENTITY();

END
