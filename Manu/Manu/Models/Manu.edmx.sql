
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 07/17/2014 15:15:25
-- Generated from EDMX file: C:\Users\Home-HP\Documents\GitHub\manu\Manu\Manu\Models\Manu.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [EFManu];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Clients1'
CREATE TABLE [dbo].[Clients1] (
    [ClientID] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Contact] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Orders'
CREATE TABLE [dbo].[Orders] (
    [OrderID] int IDENTITY(1,1) NOT NULL,
    [Date] datetime  NOT NULL,
    [OrderContents] nvarchar(max)  NOT NULL,
    [Client_ClientID] int  NOT NULL
);
GO

-- Creating table 'Parts'
CREATE TABLE [dbo].[Parts] (
    [PartID] int IDENTITY(1,1) NOT NULL,
    [PartDescription] nvarchar(max)  NOT NULL,
    [Order_OrderID] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [ClientID] in table 'Clients1'
ALTER TABLE [dbo].[Clients1]
ADD CONSTRAINT [PK_Clients1]
    PRIMARY KEY CLUSTERED ([ClientID] ASC);
GO

-- Creating primary key on [OrderID] in table 'Orders'
ALTER TABLE [dbo].[Orders]
ADD CONSTRAINT [PK_Orders]
    PRIMARY KEY CLUSTERED ([OrderID] ASC);
GO

-- Creating primary key on [PartID] in table 'Parts'
ALTER TABLE [dbo].[Parts]
ADD CONSTRAINT [PK_Parts]
    PRIMARY KEY CLUSTERED ([PartID] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Order_OrderID] in table 'Parts'
ALTER TABLE [dbo].[Parts]
ADD CONSTRAINT [FK_OrderPart]
    FOREIGN KEY ([Order_OrderID])
    REFERENCES [dbo].[Orders]
        ([OrderID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_OrderPart'
CREATE INDEX [IX_FK_OrderPart]
ON [dbo].[Parts]
    ([Order_OrderID]);
GO

-- Creating foreign key on [Client_ClientID] in table 'Orders'
ALTER TABLE [dbo].[Orders]
ADD CONSTRAINT [FK_ClientOrder]
    FOREIGN KEY ([Client_ClientID])
    REFERENCES [dbo].[Clients1]
        ([ClientID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ClientOrder'
CREATE INDEX [IX_FK_ClientOrder]
ON [dbo].[Orders]
    ([Client_ClientID]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------