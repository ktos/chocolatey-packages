$packageName = 'wincompose.portable'
$installerType = 'EXE'
$url = 'https://github.com/samhocevar/wincompose/releases/download/v0.9.7/WinCompose-NoInstall-0.9.7.zip'
$checksum = 'C2AD94F1F2E490A9EAADFFEE7463DDD7D76A814DC0C71F5280CEAC05ED5B569B'
$validExitCodes = @(0)

$installDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)" 
Install-ChocolateyZipPackage $packageName $url $installDir -Checksum $checksum -ChecksumType "sha256"
