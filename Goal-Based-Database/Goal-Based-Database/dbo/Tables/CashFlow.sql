CREATE TABLE [dbo].[CashFlow] (
    [Id]        INT        IDENTITY (1, 1) NOT NULL,
    [NetworkId] INT        NOT NULL,
    [Cost]      FLOAT (53) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([NetworkId]) REFERENCES [dbo].[Network] ([Id])
);

