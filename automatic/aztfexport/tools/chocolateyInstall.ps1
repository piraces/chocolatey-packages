$ErrorActionPreference = 'Stop'

$packageName = 'aztfexport'
$url32       = 'https://github.com/Azure/aztfexport/releases/download/v0.14.1/aztfexport_v0.14.1_windows_386.zip'
$url64       = 'https://github.com/Azure/aztfexport/releases/download/v0.14.1/aztfexport_v0.14.1_windows_amd64.zip'
$checksum32  = '6316ca8447770a641359f868573bea7dd9db1dfc2fbc0cb2a7c2b250186ad4bb'
$checksum64  = 'd73f588313537925f44e36ef3441177b6a1a5b30c2b4f1d5b27c734ad46eaf0e'

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
