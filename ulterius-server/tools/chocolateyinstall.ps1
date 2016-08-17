$ErrorActionPreference = 'Stop';

$packageName= 'ulterius-server'
$url        = 'https://ulterius.io/downloads/ulterius1.0.0.2beta.zip'

$packageArgs = @{
  packageName   = $packageName  
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64  

  softwareName  = 'Ulterius Server'

  checksum      = 'FA8AC130D04FF81982036EBAF8DD8AA05B36F64E227E5D4BC400D6C851AAC376'
  checksumType  = 'sha256'  
  
  silentArgs   = '/qn'
  
  validExitCodes= @(0)
}

$webfile = Get-ChocolateyWebFile -PackageName $packageArgs.PackageName -Url $packageArgs.Url -FileFullPath (Join-Path $env:Temp "ulterius.zip") -Checksum $packageArgs.Checksum -ChecksumType $packageArgs.ChecksumType
Get-ChocolateyUnzip -FileFullPath $webfile -Destination (Join-Path $env:Temp "Ulterius")
Install-ChocolateyInstallPackage -PackageName $packageArgs.PackageName -File (Join-Path (Join-Path $env:Temp "Ulterius") "setup.exe") -SilentArgs $packageArgs.SilentArgs

Remove-Item -Recurse (Join-Path $env:Temp "Ulterius")