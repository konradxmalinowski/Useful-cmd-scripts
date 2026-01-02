REM Dell Services Startup Script
REM This script starts all Dell-related services

REM Start Dell Data Vault Rules Processor service
net start "DDVRulesProcessor"

REM Start Dell Data Vault Data Collector service
net start "DDVDataCollector"

REM Start Dell Data Vault Collector Service API
net start "DDVCollectorSvcApi"

REM Start Dell SupportAssist Remediation service
net start "Dell SupportAssist Remediation"

REM Start Dell TechHub service
net start "DellTechHub"

REM Start SupportAssist Agent service
net start "SupportAssistAgent"

REM Start Dell Client Management Service
net start "DellClientManagementService"