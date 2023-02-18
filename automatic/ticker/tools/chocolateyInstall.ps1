$ErrorActionPreference = 'Stop'

$packageName = 'ticker'
$url32       = 'https://github.com/achannarasappa/ticker/releases/download/v4.5.6/ticker-4.5.6-windows-386.tar.gz'
$url64       = 'https://github.com/achannarasappa/ticker/releases/download/v4.5.6/ticker-4.5.6-windows-amd64.tar.gz'
$checksum32  = '8ff1181f8a2373c49afc36eb80f51735aed9c9cd2231fa7dc4069614dafc72b8'
$checksum64  = '1a05a267af9724b321d5bf1ea6b89e91a6a8d6037e58a2de23f5b1e0009b6aaa'

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
