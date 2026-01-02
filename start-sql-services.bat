REM SQL Server Express Services Startup Script
REM This script starts all SQL Server Express related services

REM Start SQL Server Full-Text Filter Daemon Launcher for SQLEXPRESS instance
net start MSSQLFDLauncher$SQLEXPRESS

REM Start SQL Server Database Engine for SQLEXPRESS instance
net start MSSQL$SQLEXPRESS

REM Start SQL Server Agent for SQLEXPRESS instance (job scheduling and automation)
net start SQLAgent$SQLEXPRESS

REM Start SQL Server Browser service (provides connection information to clients)
net start SQLBrowser

REM Start SQL Server Telemetry service for SQLEXPRESS instance
net start SQLTELEMETRY$SQLEXPRESS

REM Start SQL Server Launchpad for SQLEXPRESS instance (machine learning services)
net start MSSQLLaunchpad$SQLEXPRESS

REM Start SQL Server VSS Writer (enables backup applications to copy SQL data)
net start SQLWriter