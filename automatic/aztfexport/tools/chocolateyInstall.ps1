$ErrorActionPreference = 'Stop'

$packageName = 'aztfexport'
$url32       = 'https://github.com/Azure/aztfexport/releases/download/v0.13.0/aztfexport_v0.13.0_windows_386.zip'
$url64       = 'https://github.com/Azure/aztfexport/releases/download/v0.13.0/aztfexport_v0.13.0_windows_amd64.zip'
$checksum32  = '43981c199063972c941afd0c641d1c1a9239d404c4082ded5261bf23680ea0b9'
$checksum64  = 'bc2eb5ca674509964315f6af5b2ef2a74def08408f4c677fa25671e67f4b9118'

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
