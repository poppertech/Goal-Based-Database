﻿CREATE PROCEDURE DeleteNetwork
	@Id INT
AS
BEGIN

	DELETE Network WHERE Id = @Id;

END
