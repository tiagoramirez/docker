USE [master]
RESTORE DATABASE [AdventureWorks2022] FROM DISK = N'/usr/src/backups/AdventureWorks2022.bak' WITH FILE = 1, MOVE N'AdventureWorks2022' TO N'/var/opt/mssql/data/AdventureWorks2022.mdf', MOVE N'AdventureWorks2022_log' TO N'/var/opt/mssql/data/AdventureWorks2022_log.ldf', NOUNLOAD, STATS = 5

GO

