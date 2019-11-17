$packageName = 'wincompose.install'
$installerType = 'EXE'
$url = 'https://github.com/samhocevar/wincompose/releases/download/v0.9.3/WinCompose-Setup-0.9.3.exe'
$checksum = 'C09DFD138C12C9D73BEC253C41213757E7F0C980998CD0849F8B8CA14746D602'

$silentArgs = '/SP- /VERYSILENT /NORESTART /SUPPRESSMSGBOXES'
$silentArgsUninstall = '/VERYSILENT /NORESTART'
$validExitCodes = @(0)

# upgrade from 0.6 to 0.7 changes installation folder to ProgramFiles, instead of ProgramFiles (x86)
# this means we need to uninstall previous version if there is any, as the automatic process does not
# work.
$uninstallpath = ${Env:ProgramFiles(x86)} + "\WinCompose"
if (Test-Path $uninstallPath) {
	$uninstallFilePath = "$uninstallPath\unins000.exe"
	Start-ChocolateyProcessAsAdmin "$silentArgsUninstall" $uninstallFilePath
}

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes -Checksum $checksum -ChecksumType "sha256"
