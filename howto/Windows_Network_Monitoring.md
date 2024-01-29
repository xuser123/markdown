PowerShell Logging und Monitoring Tools
#### PowerShell ScriptBlock Logging Feature
Logs all script block activity in PowerShell commands and scripts, including commands used to manipulate the network stack. This can help detect and investigate potentially malicious network activity.

**Example 1**: Enable ScriptBlock logging on a local computer
```powershell
Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System\Audit" -Name "ProcessCreationIncludeCmdLine_Enabled" -Value 1
Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System\Audit" -Name "ProcessCreationIncludeArguments_Enabled" -Value 1
```
This enables ScriptBlock logging on the local computer, which captures all script block activity, including commands used to manipulate the network stack.
**Example 2**: Query ScriptBlock log events on a remote computer
```powershell
Get-WinEvent -ComputerName remoteComputer -FilterHashtable @{LogName='Windows PowerShell'; Id=4104}
```
This retrieves ScriptBlock log events from a remote computer that has been configured for logging.
#### PowerShell Module Logging Feature
Logs all module load activity in PowerShell, including any network-related modules that are loaded. This can help detect and investigate potentially malicious network activity.

**Example 1**: Enable Module logging on a local computer
```powershell
Set-Item -Path "HKLM:\SOFTWARE\Microsoft\PowerShell\1\Logging\ModuleLogging" -Value 1
```
This enables Module logging on the local computer, which captures all module load activity, including any network-related modules that are loaded.
**Example 2**: Query Module log events on a remote computer
```powershell
Get-WinEvent -ComputerName remoteComputer -FilterHashtable @{LogName='Windows PowerShell'; ProviderName='Microsoft-Windows-PowerShell'; Id=4103}
```
This retrieves Module log events from a remote computer that has been configured for logging.
#### ETW Logging ( Event Tracing for Windows) 
Logging technology built into Windows that allows you to capture a wide range of events on the system, including network-related events. You can use the `Get-WinEvent` cmdlet to retrieve and analyze ETW logs.

**Example 1**: Start an ETW session to capture network activity
```powershell
Get-WinEvent -LogName Microsoft-Windows-Windows Firewall With Advanced Security/Firewall
```
This starts an ETW session that captures network activity related to the Windows firewall.
**Example 2**: Query ETW events for all network-related activity
```powershell
Get-WinEvent -FilterHashtable @{LogName='Microsoft-Windows-NetworkProfile/Operational'; Level=4; ID=31000}
```
This retrieves ETW events
#### Sysmon
System monitoring tool that logs a wide range of system events, including network activity, and can help detect and investigate potential security issues. You can use the `Get-WinEvent` cmdlet to retrieve and analyze Sysmon logs.
#### Microsoft Message Analyzer
Network sniffer and analysis tool that can capture and analyze network traffic in real-time. It can help you identify potential security issues and investigate suspicious network activity.