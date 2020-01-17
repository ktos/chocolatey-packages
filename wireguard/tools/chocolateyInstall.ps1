$packageName= 'wireguard'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://download.wireguard.com/windows-client/wireguard-x86-0.0.38.msi'
$url64      = 'https://download.wireguard.com/windows-client/wireguard-amd64-0.0.38.msi'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'msi'
  url           = $url
  url64bit      = $url64
  silentArgs    = "/qn /norestart"
  validExitCodes= @(0, 3010, 1641)
  softwareName  = 'WireGuard'
  checksum      = '97A0973D7659801AF3046055A27624060DDFAA8CD041C8A4D809B7542A71B268'
  checksumType  = 'sha256'
  checksum64    = 'B2A723C6E2309B4E1E32A3B22F5C2C3DFCD92C062F2B1E0AA00A9B6823FD2F2D'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs