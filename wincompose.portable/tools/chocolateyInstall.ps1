$packageName = 'wincompose.portable'
$installerType = 'EXE'
$url = 'https://github.com/samhocevar/wincompose/releases/download/v0.9.1beta20190405/WinCompose-NoInstall-0.9.1beta20190405.zip'
$checksum = '4EE93215DD967E2EC50FD36C26B4CE67B0224AD2EC6403A7FA7A1D5077C81B11'
$validExitCodes = @(0)

$installDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)" 
Install-ChocolateyZipPackage $packageName $url $installDir -Checksum $checksum -ChecksumType "sha256"
