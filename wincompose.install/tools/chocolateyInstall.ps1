$packageName = 'wincompose.install'
$installerType = 'EXE'
$url = 'https://github.com/samhocevar/wincompose/releases/download/v0.9.0/WinCompose-Setup-0.9.0.exe'
$checksum = '36DBBC4FD11DBF90499FFD10D5172117F3CF42B4402C06F002470C12A4A59601'

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