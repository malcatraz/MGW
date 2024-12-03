$7zipUrl  = "https://www.7-zip.org/a/7z2409-x64.msi"
$installer  = "$env:TEMP\7z2409-x64.msi"
Invoke-WebRequest -Uri $7zipUrl -OutFile $installer
Start-Process -FilePath "msiexec.exe" -ArgumentList "/i $installer /qn" -Wait
Remove-Item $installer
