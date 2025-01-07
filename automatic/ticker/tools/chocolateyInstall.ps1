$ErrorActionPreference = 'Stop'

$packageName = 'ticker'
$url32       = 'https://github.com/achannarasappa/ticker/releases/download/v4.8.0/ticker-4.8.0-windows-386.tar.gz'
$url64       = 'https://github.com/achannarasappa/ticker/releases/download/v4.8.0/ticker-4.8.0-windows-amd64.tar.gz'
$checksum32  = 'e4d8e46adb66a73fdea9a79a8012402ee847d4895b4b00fdc5fd019a3b8d6213'
$checksum64  = '8b555d5d25cca9b8f6c61bb939f0195554ee942f8d8caf9d8e446a0bb1d3a93c'

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
