$ErrorActionPreference = 'Stop'

$packageName = 'ticker'
$url32       = 'https://github.com/achannarasappa/ticker/releases/download/v5.0.0/ticker-5.0.0-windows-386.tar.gz'
$url64       = 'https://github.com/achannarasappa/ticker/releases/download/v5.0.0/ticker-5.0.0-windows-amd64.tar.gz'
$checksum32  = '627c633fb6f3e9a1a39783456c4d3155945b9a2d29f04ac517acfa753f881136'
$checksum64  = 'd70c5a2c42180dd336c43bc4f6c9a67bf9e9d7e92ade62e14be0842348004959'

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
