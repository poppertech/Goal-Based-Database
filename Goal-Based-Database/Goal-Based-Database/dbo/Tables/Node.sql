CREATE TABLE [dbo].[Node] (
    [Id]                   INT        IDENTITY (1, 1) NOT NULL,
	[Name]				   VARCHAR(50) NOT NULL, 
	[Url] VARCHAR(200) NOT NULL,
    [NetworkId]            INT        NOT NULL,
    [ParentId]             INT        NULL,
    [InitialInvestment]    FLOAT (53) NULL,
    [InitialPrice]         FLOAT (53) NULL,
    [IsPortfolioComponent] BIT        NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([NetworkId]) REFERENCES [dbo].[Network] ([Id]),
    FOREIGN KEY ([ParentId]) REFERENCES [dbo].[Node] ([Id])
);

