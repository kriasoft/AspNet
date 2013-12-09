CREATE TABLE [dbo].[UserRole] (
    [RoleID]   INT          NOT NULL,
    [RoleName] [dbo].[Name] NOT NULL
    CONSTRAINT [PK_UserRole_RoleID] PRIMARY KEY CLUSTERED ([RoleID] ASC)
);