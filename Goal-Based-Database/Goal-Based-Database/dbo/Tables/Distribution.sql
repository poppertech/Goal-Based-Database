CREATE TABLE [dbo].[Distribution] (
    [Id]      INT        IDENTITY (1, 1) NOT NULL,
    [NodeId]  INT        NOT NULL,
    [Index]   INT        NOT NULL,
    [Minimum] FLOAT (53) NOT NULL,
    [Worst]   FLOAT (53) NOT NULL,
    [Likely]  FLOAT (53) NOT NULL,
    [Best]    FLOAT (53) NOT NULL,
    [Maximum] FLOAT (53) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([NodeId]) REFERENCES [dbo].[Node] ([Id])
);

