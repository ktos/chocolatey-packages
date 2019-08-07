$packageName = 'wincompose.portable'
$installerType = 'EXE'
$url = 'https://github.com/samhocevar/wincompose/releases/download/v0.9.1beta20190805/WinCompose-NoInstall-0.9.1beta20190805.zip'
$checksum = '3B20DE5F744E78D886612AD277D73747B599D09B0160B536FD6FC3AEE70D7C53'
$validExitCodes = @(0)

$installDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)" 
Install-ChocolateyZipPackage $packageName $url $installDir -Checksum $checksum -ChecksumType "sha256"
