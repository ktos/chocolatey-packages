$packageName = 'wincompose.portable'
$installerType = 'EXE'
$url = 'https://github.com/samhocevar/wincompose/releases/download/v0.9.1beta20190318/WinCompose-NoInstall-0.9.1beta20190318.zip'
$checksum = '1CAFB5B784B449A802EDBC93114D5291B5E8AFC1F3A918721EE352F848BEBED0'
$validExitCodes = @(0)

$installDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)" 
Install-ChocolateyZipPackage $packageName $url $installDir -Checksum $checksum -ChecksumType "sha256"
