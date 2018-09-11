$packageName = 'nsbuilder.install'
$installerType = 'EXE'
$url = 'https://github.com/nsbuilder-hub/nsbuilder/releases/download/r20180911/nsbuilder1-20180911-rd3a5d6d-setup.exe'
$checksum = '1A53BFA497DFB39158865F9189553E71A0FE7EDF7E271EFB082D0B4DFF6FE047'

$silentArgs = '/SP- /VERYSILENT /NORESTART /SUPPRESSMSGBOXES'
$silentArgsUninstall = '/VERYSILENT /NORESTART'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes -Checksum $checksum -ChecksumType "sha256"