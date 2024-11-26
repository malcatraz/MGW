# Define the path to the installer
$installerPath = ".\npp.8.7.1.Installer.x64.exe"

# Define the arguments for silent installation
$arguments = "/S"

# Start the process and wait for it to complete
Start-Process $installerPath -ArgumentList $arguments -Wait -NoNewWindow

$logFile = "C:\Path\To\LogFile.log"
$arguments += " /L*V `"$logFile`""