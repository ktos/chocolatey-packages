$atom = "https://github.com/samhocevar/wincompose/releases.atom"
$urlInstall = "https://github.com/samhocevar/wincompose/releases/download/v{version}/WinCompose-Setup-{version}.exe"
$fileNameInstall = "WinCompose-Setup-{version}.exe"

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

$version = $x.feed.entry[0].title.Replace("WinCompose ", "")

$fileNameInstall = $fileNameInstall.Replace("{version}", $version)
$urlInstall = $urlInstall.Replace("{version}", $version)

SaveTemplate "wincompose\wincompose.template" "wincompose\wincompose.nuspec" $version $releaseNotes

wget.exe $urlInstall | Out-Null
$checksum = $(checksum.exe -t sha256 $fileNameInstall)

echo $checksum

SaveTemplate "wincompose.install\wincompose.install.template" "wincompose.install\wincompose.install.nuspec" $version $releaseNotes $checksum
SaveTemplate "wincompose.install\tools\chocolateyInstall.template" "wincompose.install\tools\chocolateyInstall.ps1" $version $releaseNotes $checksum

Remove-Item $fileNameInstall