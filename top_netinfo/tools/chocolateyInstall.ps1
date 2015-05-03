$packageName = 'top_netinfo.portable'
$url = 'http://www.sklepy.ehost.pl/top_netinfo.zip'

$installDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)" 
Install-ChocolateyZipPackage $packageName $url $installDir
Write-ChocolateySuccess "$packageName"