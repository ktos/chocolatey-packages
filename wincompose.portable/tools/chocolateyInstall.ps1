$packageName = 'wincompose.portable'
$installerType = 'EXE'
$url = 'https://github.com/samhocevar/wincompose/releases/download/v0.9.5/WinCompose-NoInstall-0.9.5.zip'
$checksum = 'CFC023E4C72BD33C402D3B78829AE6325BBDEB0A8175689D650EF4A6C9FF26AF'
$validExitCodes = @(0)

$installDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)" 
Install-ChocolateyZipPackage $packageName $url $installDir -Checksum $checksum -ChecksumType "sha256"
