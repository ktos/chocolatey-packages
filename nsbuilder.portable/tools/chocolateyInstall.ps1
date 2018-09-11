$packageName = 'wincompose.portable'
$installerType = 'EXE'
$url = 'https://github.com/nsbuilder-hub/nsbuilder/releases/download/r20180911/nsbuilder1-20180911-rd3a5d6d-win.zip'
$checksum = 'EB371CA2D24683D78A138BAEA87FF0744998E5D6D02E89086DF5AE0E7DBABA47'
$validExitCodes = @(0)

$installDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)" 
Install-ChocolateyZipPackage $packageName $url $installDir -Checksum $checksum -ChecksumType "sha256"