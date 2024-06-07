$ErrorActionPreference = 'Stop'

$packageName = 'aztfexport'
$url32       = 'https://github.com/Azure/aztfexport/releases/download/v0.14.2/aztfexport_v0.14.2_windows_386.zip'
$url64       = 'https://github.com/Azure/aztfexport/releases/download/v0.14.2/aztfexport_v0.14.2_windows_amd64.zip'
$checksum32  = '7a17b7cc7181f365b39e5aa4f76e5dcdfb0acfc3b797e4398a4183103ea8e800'
$checksum64  = '6e08a4b1630f1a1954fa95eb7a2c8bdce207383984a6569e3d495181d81e074c'

$packageArgs = @{
  packageName    = $packageName
  url            = $url32
  url64Bit       = $url64
  checksum       = $checksum32
  checksum64     = $checksum64
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
