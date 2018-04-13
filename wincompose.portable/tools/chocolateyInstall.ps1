$packageName = 'wincompose.portable'
$installerType = 'EXE'
$url = 'https://github.com/samhocevar/wincompose/releases/download/v0.8.0/WinCompose-NoInstall-0.8.0.zip'
$checksum = 'BFDFA0D472F008D921A571070ADDCEDB82D91E37FEC101BE0ECF16369D3AAFF3'
$validExitCodes = @(0)

$installDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)" 
Install-ChocolateyZipPackage $packageName $url $installDir -Checksum $checksum -ChecksumType "sha256"