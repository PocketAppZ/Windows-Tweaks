[Info]
Title=Windows Logs
Description=Clean-up Windows Log files
Author=Builtbybel
AuthorURL=http://www.builtbybel.com

[Files]
File1=DeleteFile|%SystemDrive%\*.log
File2=DeleteFile|%WinDir%\Directx.log
File3=DeleteFile|%WinDir%\SchedLgU.txt
File4=DeleteFile|%WinDir%\*.log
File5=DeleteFile|%WinDir%\security\logs\*.old
File6=DeleteFile|%WinDir%\security\logs\*.log
File7=DeleteFile|%WinDir%\Debug\*.log
File8=DeleteFile|%WinDir%\Debug\UserMode\*.bak
File9=DeleteFile|%WinDir%\Debug\UserMode\*.log
File10=DeleteFile|%WinDir%\*.bak
File11=DeleteFile|%WinDir%\system32\wbem\Logs\*.log
File12=DeleteFile|%WinDir%\OEWABLog.txt
File13=DeleteFile|%WinDir%\setuplog.txt
File14=DeleteFile|%WinDir%\Logs\DISM\*.log
File15=DeleteFile|%WinDir%\*.log.txt
File16=DeleteFile|%WinDir%\APPLOG\*.*
File17=DeleteFile|%WinDir%\system32\wbem\Logs\*.log
File18=DeleteFile|%WinDir%\system32\wbem\Logs\*.lo_
File19=DeleteFile|%WinDir%\Logs\DPX\*.log
File20=DeleteFile|%WinDir%\ServiceProfiles\NetworkService\AppData\Local\Temp\*.log
File21=DeleteFile|%WinDir%\Logs\*.log
File22=DeleteFile|%LocalAppData%\Microsoft\Windows\WindowsUpdate.log
File23=DeleteFile|%LocalAppData%\Microsoft\Windows\WebCache\*.log
File24=DeleteFile|%WinDir%\Panther\cbs.log
File25=DeleteFile|%WinDir%\Panther\DDACLSys.log
File26=DeleteFile|%WinDir%\repair\setup.log
File27=DeleteFile|%WinDir%\Panther\UnattendGC\diagerr.xml
File28=DeleteFile|%WinDir%\Panther\UnattendGC\diagwrn.xml
File29=DeleteFile|%WinDir%\inf\setupapi.offline.log
File30=DeleteFile|%WinDir%\inf\setupapi.app.log
File31=DeleteFile|%AllUsersProfile%\Microsoft\Network\Downloader\*.*|RECURSE
File32=DeleteFile|%AllUsersProfile%\Microsoft\Windows Security Health\Logs\*.*|RECURSE
File33=DeleteFile|%WinDir%\System32\WDI\LogFiles\StartupInfo\*.*|RECURSE
File34=DeleteFile|%AllUsersProfile%\USOShared\Logs\*.*|RECURSE
File35=DeleteFile|%LocalAppData%\ConnectedDevicesPlatform\*.*
File36=DeleteFile|%LocalAppData%\Diagnostics\*.*|RECURSE
File37=DeleteFile|%ProgramFiles%\UNP\Logs\*.*|RECURSE
File38=DeleteFile|%SystemDrive%\PerfLogs\System\Diagnostics\*.*|RECURSE
File39=DeleteFile|%SystemDrive%\PerfLogs\System\Performance\*.*|RECURSE
File40=DeleteFile|%WinDir%\debug\WIA\*.log
File41=DeleteFile|%SystemDrive%\PerfLogs\System\Diagnostics\*.*
File42=DeleteFile|%WinDir%\Logs\CBS\*.cab
File43=DeleteFile|%WinDir%\Logs\dosvc\*.*|RECURSE
File44=DeleteFile|%WinDir%\Logs\NetSetup\*.*|RECURSE
File45=DeleteFile|%WinDir%\Logs\CBS\*.cab
File46=DeleteFile|%WinDir%\Logs\SIH\*.*|RECURSE
File47=DeleteFile|%WinDir%\Logs\WindowsBackup\*.etl
File48=DeleteFile|%WinDir%\Panther\FastCleanup\*.log|RECURSE
File49=DeleteFile|%WinDir%\Panther\Rollback\*.txt|RECURSE
File50=DeleteFile|%WinDir%\security\logs\*.*|RECURSE
File51=DeleteFile|%WinDir%\System32\LogFiles\HTTPERR\*.*
File52=DeleteFile|%WinDir%\System32\LogFiles\Scm\*.*|RECURSE
File53=DeleteFile|%WinDir%\System32\LogFiles\setupcln\*.*|RECURSE
File54=DeleteFile|%WinDir%\System32\LogFiles\WMI\*.*|RECURSE
File55=DeleteFile|%WinDir%\SysNative\SleepStudy\*.etl
File56=DeleteFile|%WinDir%\SysNative\SleepStudy\ScreenOn\*.etl
File57=DeleteFile|%WinDir%\System32\SleepStudy\*.etl
File58=DeleteFile|%WinDir%\System32\SleepStudy\ScreenOn\*.etl
File59=DeleteDir|%WinDir%\Logs
File60=DeleteDir|%WinDir%\DISM
File61=DeleteFile|%WinDir%\System32\catroot2\*.chk
File62=DeleteFile|%WinDir%\System32\catroot2\*.log
File63=DeleteFile|%WinDir%\System32\catroot2\.jrs
File64=DeleteFile|%WinDir%\System32\catroot2\*.txt
File65=DeleteRegKey|HKLM\Software\Microsoft\RADAR\HeapLeakDetection\DiagnosedApplications
File66=DeleteRegKey|HKLM\Software\Microsoft\Tracing
File67=DeleteRegKey|HKLM\Software\Wow6432Node\Microsoft\RADAR\HeapLeakDetection\DiagnosedApplications
File68=DeleteRegKey|HKLM\Software\Wow6432Node\Microsoft\Tracing
