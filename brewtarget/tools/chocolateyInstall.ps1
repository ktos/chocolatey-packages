$packageName = 'brewtarget'
$installerType = 'EXE'
$url = 'https://launchpad.net/brewtarget/trunk/2.3.0/+download/brewtarget_2.3.0_x86.exe'
$silentArgs = '/S'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -ValidExitCodes $validExitCodes -Checksum "043F7BF1BE31C0AD36DAE102F64B03C30528DDDEF5A087CC203317F067048E4B" -ChecksumType "sha256"