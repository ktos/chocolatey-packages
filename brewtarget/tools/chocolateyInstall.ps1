$packageName = 'brewtarget'
$installerType = 'EXE'
$url = 'https://launchpad.net/brewtarget/trunk/2.1.0/+download/brewtarget_2.1.0_x86.exe'
$silentArgs = '/S'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes