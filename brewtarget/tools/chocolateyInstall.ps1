$packageName = 'brewtarget'
$installerType = 'EXE'
$url = 'https://launchpad.net/brewtarget/trunk/2.3.0/+download/brewtarget_2.3.0_x86.exe'
$silentArgs = '/S'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes