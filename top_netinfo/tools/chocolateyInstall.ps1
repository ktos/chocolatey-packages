$packageName = 'top_netinfo'
$url = 'http://www.sklepy.ehost.pl/top_netinfo.zip'

$checksum = '028929B175C0486ED86F14D525222708D3BD3B4E60CC3899897B7C5D3B3866FB'

$installDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)" 
Install-ChocolateyZipPackage $packageName $url $installDir -Checksum $checksum -ChecksumType 'sha256'