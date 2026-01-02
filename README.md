# Windows Services Management Scripts

A collection of batch scripts for managing and maintaining Windows services, system health, and performance configurations.

## Overview

This repository contains utility scripts designed to streamline common Windows administrative tasks, including service management for Dell applications, SQL Server, system maintenance, and power configuration.

## Scripts

### Dell.bat
**Purpose:** Dell Services Management

Starts all Dell-related services including:
- Dell Data Vault services (Rules Processor, Data Collector, Collector Service API)
- Dell SupportAssist and Remediation services
- Dell TechHub
- Dell Client Management Service

**Usage:**
```batch
Dell.bat
```

**Requirements:**
- Administrator privileges
- Dell software suite installed

---

### Procesor.bat
**Purpose:** System Maintenance and Repair

Performs comprehensive system diagnostics and maintenance tasks:
- **DISM:** Scans and repairs Windows system image corruption
- **SFC:** Verifies and repairs protected system files
- **Winget:** Updates all installed packages
- **Network Reset:** Flushes DNS cache and renews IP configuration
- **Disk Check:** Scans and fixes disk errors

**Usage:**
```batch
Procesor.bat
```

**Requirements:**
- Administrator privileges
- Windows 10/11
- Winget (Windows Package Manager) installed

**Note:** The `chkdsk /f` command requires a system restart to complete.

---

### Sql.bat
**Purpose:** SQL Server Express Services Startup

Starts all SQL Server Express instance services:
- SQL Server Database Engine (SQLEXPRESS)
- SQL Server Agent (job scheduling)
- SQL Server Browser
- Full-Text Filter Daemon Launcher
- SQL Server Telemetry
- SQL Server Launchpad (machine learning services)
- SQL Server VSS Writer (backup support)

**Usage:**
```batch
Sql.bat
```

**Requirements:**
- Administrator privileges
- SQL Server Express installed with instance name "SQLEXPRESS"

---

### Ulitmate performance.bat
**Purpose:** Ultimate Performance Power Plan Configuration

Configures Windows to use the Ultimate Performance power plan:
- Sets the active power scheme to High Performance
- Creates and enables the hidden Ultimate Performance power plan

**Usage:**
```batch
"Ulitmate performance.bat"
```

**Requirements:**
- Administrator privileges
- Windows 10 Pro/Enterprise or Windows 11

**Note:** The Ultimate Performance power plan is designed for workstations and may increase power consumption.

---

### update.ps1
**Purpose:** Selective Package Update Script

A PowerShell script that automatically updates all installed Windows packages while excluding specific applications (JetBrains products and Spotify).

**Features:**
- Scans for all available package updates using winget
- Filters out JetBrains and Spotify applications from updates
- Automatically accepts license agreements
- Runs silently without user interaction
- Processes updates one by one for better control

**Usage:**
```powershell
.\update.ps1
```

Or right-click and select "Run with PowerShell"

**Requirements:**
- Windows PowerShell 5.1 or PowerShell 7+
- Winget (Windows Package Manager) installed
- Execution policy must allow script execution

**Excluded Applications:**
- All JetBrains products (IntelliJ IDEA, PyCharm, WebStorm, etc.)
- Spotify

**Note:** This script is useful when you want to keep certain applications at their current version while updating everything else.

---

## General Requirements

All scripts require:
- **Windows 10 or later**
- **Administrator privileges** - Right-click and select "Run as administrator"

## Installation

1. Clone or download this repository
2. Ensure you have administrator privileges
3. Run the desired script by right-clicking and selecting "Run as administrator"

## Security Considerations

These scripts modify system configurations and services. Review each script before execution to ensure it matches your system requirements. Always run scripts from trusted sources only.

## Contributing

When modifying scripts:
- Maintain clear, descriptive comments in English
- Test thoroughly before committing
- Document any new functionality in this README
- Follow Windows batch scripting best practices

## License

These scripts are provided as-is for personal and administrative use.

## Support

For issues or questions:
- Review the comments within each script
- Ensure all requirements are met
- Verify administrator privileges are granted
- Check Windows Event Viewer for service-specific errors

---

**Last Updated:** 2026-01-02
