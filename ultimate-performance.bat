REM Ultimate Performance Power Plan Configuration Script
REM This script configures Windows to use the Ultimate Performance power plan

REM Set the active power scheme to Minimum (High Performance base)
powercfg /s SCHEME_MIN

REM Duplicate the Ultimate Performance power scheme (GUID: e9a42b02-d5df-448d-aa00-03f14749eb61)
REM This creates a copy of the hidden Ultimate Performance plan and makes it available
powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61