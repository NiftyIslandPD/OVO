-- Create the tables for OVO

-- drop all... 
drop Table [OVOVisitor]
drop Table [OVOActivity]
drop table [OVOMemberToken]
drop table [OVOLootToken]

-- OVO-Visitor
Create Table [OVOVisitor] (
    [Id] UNIQUEIDENTIFIER primary key DEFAULT(newid()),
    [ClientId] UNIQUEIDENTIFIER not null, 
    [FirstSeen] DateTimeOffset(7) not null default(getutcdate()),
    [LastSeen] DateTimeOffset(7) not null default(getutcdate()),
    [EthWallet] nvarchar(1000) null
)
-- OVO-Acvitivty
Create Table [OVOActivity] (
    [Id] UNIQUEIDENTIFIER primary key DEFAULT(newid()),
    [VisitorId] UNIQUEIDENTIFIER null,
    [MemberId] UNIQUEIDENTIFIER null, 
    [When] DateTimeOffset(7) not null default(getutcdate()),
    [EventName] nvarchar(1000) not null,
    [EventDescription] nvarchar(1000) not null,
)
-- OVO-MemberToken
Create Table [OVOMemberToken] (
    [Id] UNIQUEIDENTIFIER primary key DEFAULT(newid()),
    [VisitorId] UNIQUEIDENTIFIER null,
    [Faction] nvarchar(100) null,
    [DisplayName] nvarchar(1000) null,
    [MintDate] DateTimeOffset(7) not null DEFAULT(GETUTCDATE()),
    [TokenId] int not null, 
    [OnChainDate] DateTimeOffset(7) null,
    [Txhash] nvarchar(200) null,
    [ImagePath] nvarchar(1000) null
)
-- OVO-Loot
Create Table [OVOLootToken] (
    [Id] UNIQUEIDENTIFIER primary key DEFAULT(newid()),
    [VisitorId] UNIQUEIDENTIFIER null,
    [ActionDate] DateTimeOffset(7),
    [Amount] decimal not null,
    [Faction] nvarchar(200) not null,
    [Notes] nvarchar(1000) not null
)
-- RAID! Next