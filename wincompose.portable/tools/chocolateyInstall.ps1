$packageName = 'wincompose.portable'
$installerType = 'EXE'
$url = 'https://github.com/samhocevar/wincompose/releases/download/v0.9.3/WinCompose-NoInstall-0.9.3.zip'
$checksum = '98D685421B6F44F3F2634446A872AAB2A0DF6CD1C7892A05E8C7DC7B506235F3'
$validExitCodes = @(0)

$installDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)" 
Install-ChocolateyZipPackage $packageName $url $installDir -Checksum $checksum -ChecksumType "sha256"
