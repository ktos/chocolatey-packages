$packageName = 'wincompose.portable'
$installerType = 'EXE'
$url = 'https://github.com/samhocevar/wincompose/releases/download/v0.8.1/WinCompose-NoInstall-0.8.1.zip'
$checksum = '7EB6F9CEF331775A797412721EB7DAF6037E0D35E1E6D5C4993A893F86CF9F87'
$validExitCodes = @(0)

$installDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)" 
Install-ChocolateyZipPackage $packageName $url $installDir -Checksum $checksum -ChecksumType "sha256"