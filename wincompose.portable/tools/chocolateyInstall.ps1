$packageName = 'wincompose.portable'
$installerType = 'EXE'
$url = 'https://github.com/samhocevar/wincompose/releases/download/v0.9.6/WinCompose-NoInstall-0.9.6.zip'
$checksum = '216DE6186F83C95DDDB546B433A7998B8F4FC22FB0AC7A185EBAA29E5E3097CF'
$validExitCodes = @(0)

$installDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)" 
Install-ChocolateyZipPackage $packageName $url $installDir -Checksum $checksum -ChecksumType "sha256"
