$packageName = 'brewtarget'
$installerType = 'EXE'
$url = 'https://launchpad.net/brewtarget/trunk/2.0.3/+download/brewtarget_2.0.3_x86.exe'
$silentArgs = '/S'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes