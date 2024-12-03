# Define the URL for the Adobe Reader DC offline installer
$installerUrl = "https://get.adobe.com/reader/download?os=Windows+11&name=Reader+2024.004.20220+English+for+Windows&lang=en&nativeOs=Windows+10&accepted=&declined=&preInstalled=&site=enterprise"

# Define the path to save the installer
$installerPath = Join-Path $env:TEMP (Split-Path $installerUrl -Leaf)

# Download the installer
Invoke-WebRequest -Uri $installerUrl -OutFile $installerPath

# Run the installer silently
Start-Process -FilePath $installerPath -ArgumentList "/silent", "/norestart" -Wait

# Check if the installation was successful by confirming the executable exists in the default install directory
if (Test-Path "C:\Program Files (x86)\Adobe\Acrobat DC\Acrobat\Acrobat.exe") {
    Write-Output "Adobe Reader DC installed successfully."
} else {
    Write-Output "Adobe Reader DC installation failed."
}
