$packageName = 'wincompose.install'
$installerType = 'EXE'
$silentArgs = '/VERYSILENT /NORESTART'
$validExitCodes = @(0)

#Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes
$uninstallpath = ${Env:ProgramFiles} + "\WinCompose"
if (Test-Path $uninstallPath) {	
	$uninstallFilePath = "$uninstallPath\unins000.exe"
	Uninstall-ChocolateyPackage $packageName $installerType $silentArgs $uninstallFilePath
} else {
	Write-Warning "$packageName uninstaller not found. Uninstalling only package from Chocolatey."
}