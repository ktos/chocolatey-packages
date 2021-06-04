$packageName = 'wincompose.portable'
$installerType = 'EXE'
$url = 'https://github.com/samhocevar/wincompose/releases/download/v0.9.10/WinCompose-NoInstall-0.9.10.zip'
$checksum = '5933BE9655F9DA85DDA8EA6B53FCC6D220C91B6534A8255C25D02B20D87FC4C8'
$validExitCodes = @(0)

$installDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)" 
Install-ChocolateyZipPackage $packageName $url $installDir -Checksum $checksum -ChecksumType "sha256"
