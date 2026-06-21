$ErrorActionPreference = 'Stop'

$packageName = 'ticker'
$url32       = 'https://github.com/achannarasappa/ticker/releases/download/v5.3.0/ticker-5.3.0-windows-386.tar.gz'
$url64       = 'https://github.com/achannarasappa/ticker/releases/download/v5.3.0/ticker-5.3.0-windows-amd64.tar.gz'
$checksum32  = '42c6618a8fe3a598fa2f864348628458dbe2013f0f5880dc5edb296e6062ddb7'
$checksum64  = '4bcbe7888077d27a43e4b802123f1f13e7f6e94c6b283c6ab37714b2680ce9e5'

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
