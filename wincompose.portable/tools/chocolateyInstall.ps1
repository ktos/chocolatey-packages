$packageName = 'wincompose.portable'
$installerType = 'EXE'
$url = 'https://github.com/samhocevar/wincompose/releases/download/v0.9.4/WinCompose-NoInstall-0.9.4.zip'
$checksum = '3E7739D8C4C0127C0EA8CFE04670B02E9A9E0101D1B6754E83EE417C6E44F45D'
$validExitCodes = @(0)

$installDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)" 
Install-ChocolateyZipPackage $packageName $url $installDir -Checksum $checksum -ChecksumType "sha256"
