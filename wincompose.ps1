$x = New-Object System.Xml.XmlDocument
$x.LoadXml( (Invoke-WebRequest https://github.com/samhocevar/wincompose/releases.atom).Content)

$releaseNotes = $x.feed.entry[0].content.InnerText

$releaseNotes = $releaseNotes.Replace("<p>", "")
$releaseNotes = $releaseNotes.Replace("</p>", "")
$releaseNotes

$version = $x.feed.entry[0].title.Replace("WinCompose ", "")