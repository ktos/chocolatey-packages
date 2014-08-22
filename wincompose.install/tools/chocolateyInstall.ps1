$packageName = 'wincompose.install'
$installerType = 'EXE'
$url = 'https://github.com/samhocevar/wincompose/releases/download/v0.6.11/WinCompose-Setup-0.6.11.exe'
$silentArgs = '/SP- /VERYSILENT /NORESTART /SUPPRESSMSGBOXES'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes