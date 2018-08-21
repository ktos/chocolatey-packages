$packageName = 'wincompose.portable'
$installerType = 'EXE'
$url = 'https://github.com/samhocevar/wincompose/releases/download/v0.8.2/WinCompose-NoInstall-0.8.2.zip'
$checksum = 'B45CAC575FC5EA105D0560D85567A56BF921A15753DD1FA10B075410107BDF1D'
$validExitCodes = @(0)

$installDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)" 
Install-ChocolateyZipPackage $packageName $url $installDir -Checksum $checksum -ChecksumType "sha256"