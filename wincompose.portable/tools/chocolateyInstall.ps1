$packageName = 'wincompose.portable'
$installerType = 'EXE'
$url = 'https://github.com/samhocevar/wincompose/releases/download/v0.7.7beta20170511/WinCompose-NoInstall-0.7.7beta20170511.zip'
$checksum = '431D8376625E8DEFE8E96DD6E50F4DA745C0C49EAE1F01A8E417D7B4FDDA0AB6'
$validExitCodes = @(0)

$installDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)" 
Install-ChocolateyZipPackage $packageName $url $installDir -Checksum $checksum -ChecksumType "sha256"