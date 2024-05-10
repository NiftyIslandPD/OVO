-- Create the tables for OVO

-- drop all... 
drop Table [OVO-Visitor]
drop Table [OVO-Activity]

-- OVO-Visitor
Create Table [OVO-Visitor] (
    [Id] UNIQUEIDENTIFIER primary key DEFAULT(newid()),
    [ClientId] UNIQUEIDENTIFIER not null, 
    [FirstSeen] DATETIME2 not null default(getutcdate()),
    [LastSeen] DATETIME2 not null default(getutcdate()),
    [EthWallet] nvarchar(1000) null
)
-- OVO-Acvitivty
Create Table [OVO-Activity] (
    [Id] UNIQUEIDENTIFIER primary key DEFAULT(newid()),
    [VisitorId] UNIQUEIDENTIFIER null,
    [ClientId] UNIQUEIDENTIFIER null, 
    [MemberId] UNIQUEIDENTIFIER null, 
    [When] DATETIME2 not null default(getutcdate()),
    [EventName] nvarchar(1000) not null,
    [EventDescription] nvarchar(1000) not null,
)
-- OVO-MemberToken
Create Table [OVO-MemberToken] (
    [Id] UNIQUEIDENTIFIER primary key DEFAULT(newid()),
    [TokenId] int not null, 
    [VisitorId] UNIQUEIDENTIFIER null,
    [MintDate] DATETIME2 not null DEFAULT(GETUTCDATE())
)

-- OVO-Loot

-- OVO-Raid

-- OVO-RaidActivity

-- vwOfficers

-- vwOutlaws