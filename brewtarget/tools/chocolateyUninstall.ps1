$packageName = 'brewtarget'
$installerType = 'EXE'
$silentArgs = '/S'
$validExitCodes = @(0)

#Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes
$uninstallpath = ${Env:ProgramFiles(x86)} + "\BrewTarget-2.3.0"
if (Test-Path $uninstallPath) {	
	$uninstallFilePath = "$uninstallPath\Uninstall.exe"
	Uninstall-ChocolateyPackage $packageName $installerType $silentArgs $uninstallFilePath
} else {
	Write-Warning "$packageName uninstaller not found. Uninstalling only package from Chocolatey."
}