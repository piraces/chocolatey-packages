$ErrorActionPreference = 'Stop'

$packageName = 'ticker'
$url32       = 'https://github.com/achannarasappa/ticker/releases/download/v5.0.3/ticker-5.0.3-windows-386.tar.gz'
$url64       = 'https://github.com/achannarasappa/ticker/releases/download/v5.0.3/ticker-5.0.3-windows-amd64.tar.gz'
$checksum32  = 'f2471c96cdc2d7ddbfbda06833698556389d9d54050c01472bedff027562695d'
$checksum64  = '338597da3b67767a7917b28ddb4e9453ce0e37c9594293798544ec68c8c1cd15'

$toolsDir = (Split-Path -parent $MyInvocation.MyCommand.Definition)

$packageArgs = @{
  packageName    = $packageName
  url            = $url32
  url64Bit       = $url64
  checksum       = $checksum32
  checksum64     = $checksum64
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation   = "$toolsDir\ticker.tar"
}



Install-ChocolateyZipPackage @packageArgs

Get-ChocolateyUnzip -FileFullPath "$toolsDir\ticker.tar" -Destination $toolsDir
