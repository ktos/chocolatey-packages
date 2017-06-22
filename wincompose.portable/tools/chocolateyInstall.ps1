$packageName = 'wincompose.portable'
$installerType = 'EXE'
$url = 'https://github.com/samhocevar/wincompose/releases/download/v0.7.7/WinCompose-NoInstall-0.7.7.zip'
$checksum = '3258A59C2F8F622150AE4D4DB8662F4E3E23399DC79D955CA16147F2001F9079'
$validExitCodes = @(0)

$installDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)" 
Install-ChocolateyZipPackage $packageName $url $installDir -Checksum $checksum -ChecksumType "sha256"