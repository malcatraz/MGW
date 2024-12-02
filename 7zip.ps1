# Define the path to the installer
$installerPath = ".\7z2408-x64.exe"

# Define the arguments for silent installation
$arguments = "/S"

# Start the process and wait for it to complete
Start-Process $installerPath -ArgumentList $arguments -Wait -NoNewWindow

$logFile = "C:\LogFile.log"
$arguments += " /L*V `"$logFile`""
