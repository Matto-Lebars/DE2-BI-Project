USE master;
GO

DROP DATABASE IF EXISTS TDERP;
GO

-- Restore database
RESTORE DATABASE TDERP
FROM DISK = '/var/opt/mssql/TDERP.bak';