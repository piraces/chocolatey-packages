$ErrorActionPreference = 'Stop'

$packageName = 'aztfexport'
$url32       = 'https://github.com/Azure/aztfexport/releases/download/v0.11.0/aztfexport_v0.11.0_windows_386.zip'
$url64       = 'https://github.com/Azure/aztfexport/releases/download/v0.11.0/aztfexport_v0.11.0_windows_amd64.zip'
$checksum32  = '912e4a33c1a8ae4859577131493061fe4e4bd44c2b1f776fb07c3d6be707b10a'
$checksum64  = 'e18d807a23af3622d8d0f43b9a1ce59ac53955a28ddda1df1105e8038e7c5f1d'

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
