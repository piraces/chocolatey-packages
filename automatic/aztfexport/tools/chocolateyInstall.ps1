$ErrorActionPreference = 'Stop'

$packageName = 'aztfexport'
$url32       = 'https://github.com/Azure/aztfexport/releases/download/v0.14.0/aztfexport_v0.14.0_windows_386.zip'
$url64       = 'https://github.com/Azure/aztfexport/releases/download/v0.14.0/aztfexport_v0.14.0_windows_amd64.zip'
$checksum32  = 'fe78eddcc8deecb9ab027e040ab738bfbc4523ccee5544c0d898d0cc13059e6b'
$checksum64  = 'f2708c1ce26a01165743ad78549850339a0ae7cc4aea41f7109974d2d66cc993'

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
