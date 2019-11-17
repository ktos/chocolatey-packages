$atom = "https://github.com/samhocevar/wincompose/releases.atom"
$urlInstall = "https://github.com/samhocevar/wincompose/releases/download/v{version}/WinCompose-Setup-{version}.exe"
$urlPortable = "https://github.com/samhocevar/wincompose/releases/download/v{version}/WinCompose-NoInstall-{version}.zip"

$fileNameInstall = "WinCompose-Setup-{version}.exe"
$fileNamePortable = "WinCompose-NoInstall-{version}.zip"

function SaveTemplate([string]$templateFile, [string]$resultFile, [string]$version, [string]$releaseNotes, [string]$checksum) {    
    $template = (Get-Content $templateFile)
    $template = $template.Replace("{version}", $version)
    $template = $template.Replace("{releaseNotes}", $releaseNotes)
    $template = $template.Replace("{checksum}", $checksum)

    Set-Content -Value $template -Path $resultFile
}

$x = New-Object System.Xml.XmlDocument
$x.LoadXml((Invoke-WebRequest $atom).Content)

$releaseNotes = $x.feed.entry[0].content.InnerText

$releaseNotes = $releaseNotes.Replace("<p>", "")
$releaseNotes = $releaseNotes.Replace("</p>", "")
$releaseNotes = $releaseNotes.Replace("<li>", "* ")
$releaseNotes = $releaseNotes.Replace("<ul>", "")
$releaseNotes = $releaseNotes.Replace("</ul>", "")
$releaseNotes = $releaseNotes.Replace("</li>", "")
$releaseNotes = $releaseNotes.Replace("<kbd>", "")
$releaseNotes = $releaseNotes.Replace("</kbd>", "")

$version = $x.feed.entry[0].title.Replace("WinCompose ", "")

$fileNameInstall = $fileNameInstall.Replace("{version}", $version)
$urlInstall = $urlInstall.Replace("{version}", $version)

$fileNamePortable = $fileNamePortable.Replace("{version}", $version)
$urlPortable = $urlPortable.Replace("{version}", $version)

SaveTemplate "wincompose\wincompose.template" "wincompose\wincompose.nuspec" $version.Replace("beta", "-beta") $releaseNotes

wget.exe $urlInstall 2> Out-Null
$checksum = $(checksum.exe -t sha256 $fileNameInstall)

SaveTemplate "wincompose.install\wincompose.install.template" "wincompose.install\wincompose.install.nuspec" $version.Replace("beta", "-beta") $releaseNotes $checksum
SaveTemplate "wincompose.install\tools\chocolateyInstall.template" "wincompose.install\tools\chocolateyInstall.ps1" $version $releaseNotes $checksum

Remove-Item $fileNameInstall

wget.exe $urlPortable 2> Out-Null
$checksum = $(checksum.exe -t sha256 $fileNamePortable)

SaveTemplate "wincompose.portable\wincompose.portable.template" "wincompose.portable\wincompose.portable.nuspec" $version.Replace("beta", "-beta") $releaseNotes $checksum
SaveTemplate "wincompose.portable\tools\chocolateyInstall.template" "wincompose.portable\tools\chocolateyInstall.ps1" $version $releaseNotes $checksum

Remove-Item $fileNamePortable

choco.exe pack "wincompose\wincompose.nuspec"
choco.exe pack "wincompose.install\wincompose.install.nuspec"
choco.exe pack "wincompose.portable\wincompose.portable.nuspec"