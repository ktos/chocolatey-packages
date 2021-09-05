$packageName = 'wincompose.portable'
$installerType = 'EXE'
$url = 'https://github.com/samhocevar/wincompose/releases/download/v0.9.11/WinCompose-NoInstall-0.9.11.zip'
$checksum = '6864655B0CAB138FB13A573C890577E011705AC2A2386C30D56337A84115450F'
$validExitCodes = @(0)

$installDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)" 
Install-ChocolateyZipPackage $packageName $url $installDir -Checksum $checksum -ChecksumType "sha256"
