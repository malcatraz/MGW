 /silent /install
# Define the path to the installer
$installerPath = ".\Chromesetup.exe"

# Define the arguments for silent installation
$arguments = "/silent /install"

# Start the process and wait for it to complete
Start-Process $installerPath -ArgumentList $arguments -Wait -NoNewWindow

$logFile = "C:\LogFile.log"
$arguments += " /L*V `"$logFile`""
