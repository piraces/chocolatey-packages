$ErrorActionPreference = 'Stop'

$packageName = 'ticker'
$url32       = 'https://github.com/achannarasappa/ticker/releases/download/v2.3.0/ticker-2.3.0-windows-386.tar.gz'
$url64       = 'https://github.com/achannarasappa/ticker/releases/download/v2.3.0/ticker-2.3.0-windows-amd64.tar.gz'
$checksum32  = '2850040270fd82dade7fcf0a267400c6ca2198861c015062acbdc94c1d318a29'
$checksum64  = 'de80113eed2c1dfa08408e3920d50027df0eb5a13a4f08d9466ec836404eee8e'

$toolsDir = (Split-Path -parent $MyInvocation.MyCommand.Definition)

$packageArgs = @{
  packageName    = $packageName
  url            = $url32
  url64Bit       = $url64
  checksum       = $checksum32
  checksum64     = $checksum64
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  fileFullPath   = "$toolsDir\ticker.tar.gz"
}



Get-ChocolateyWebFile @packageArgs

Get-ChocolateyUnzip -FileFullPath $packageArgs.fileFullPath -Destination $toolsDir

Get-ChocolateyUnzip -FileFullPath "$toolsDir\ticker.tar" -Destination $toolsDir
