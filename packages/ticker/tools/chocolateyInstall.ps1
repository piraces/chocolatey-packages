$toolsDir = (Split-Path -parent $MyInvocation.MyCommand.Definition)

Get-ChocolateyWebFile -PackageName 'ticker' -FileFullPath "$toolsDir\ticker.tar.gz" `
-Url 'https://github.com/achannarasappa/ticker/releases/download/v2.3.0/ticker-2.3.0-windows-386.tar.gz' `
-Url64bit 'https://github.com/achannarasappa/ticker/releases/download/v2.3.0/ticker-2.3.0-windows-amd64.tar.gz'

Get-ChocolateyUnzip -FileFullPath "$toolsDir\ticker.tar.gz" -Destination $toolsDir

Get-ChocolateyUnzip -FileFullPath "$toolsDir\ticker.tar" -Destination $toolsDir
