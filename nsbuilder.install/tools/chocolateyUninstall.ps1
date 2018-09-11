$packageName = 'nsbuilder.install'
$installerType = 'EXE'
$silentArgs = '/VERYSILENT /NORESTART'
$validExitCodes = @(0)

$uninstallpath = ${Env:ProgramFiles(x86)} + "\NSBuilder"
if (Test-Path $uninstallPath) {	
	$uninstallFilePath = "$uninstallPath\unins000.exe"
	Uninstall-ChocolateyPackage $packageName $installerType $silentArgs $uninstallFilePath
} else {
	Write-Warning "$packageName uninstaller not found. Uninstalling only package from Chocolatey."
}