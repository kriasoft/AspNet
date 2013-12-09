MERGE INTO [dbo].[UserRole] AS Target
USING (VALUES

    (1, N'Administrator'),
    (2, N'Moderator')

) AS Source ([RoleID], [RoleName])
ON Target.[RoleID] = Source.[RoleID]
-- Update matched rows
WHEN MATCHED THEN
UPDATE SET [RoleName] = Source.[RoleName]
-- Insert new rows
WHEN NOT MATCHED BY TARGET THEN
INSERT ([RoleID], [RoleName])
VALUES ([RoleID], [RoleName])
-- Delete rows that are in the target but not the source
WHEN NOT MATCHED BY SOURCE THEN
DELETE;
GO