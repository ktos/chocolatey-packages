$packageName = 'wincompose.portable'
$installerType = 'EXE'
$url = 'https://github.com/samhocevar/wincompose/releases/download/v0.9.8/WinCompose-NoInstall-0.9.8.zip'
$checksum = '026F918FC2C5092CC593A4FACBEEF590B61888A5F681A10043B1EBE5592B28FF'
$validExitCodes = @(0)

$installDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)" 
Install-ChocolateyZipPackage $packageName $url $installDir -Checksum $checksum -ChecksumType "sha256"
