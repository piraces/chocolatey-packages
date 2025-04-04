$ErrorActionPreference = 'Stop'

$packageName = 'aztfexport'
$url32       = 'https://github.com/Azure/aztfexport/releases/download/v0.17.1/aztfexport_v0.17.1_windows_386.zip'
$url64       = 'https://github.com/Azure/aztfexport/releases/download/v0.17.1/aztfexport_v0.17.1_windows_amd64.zip'
$checksum32  = '95b465b4430b375d042351f69befd4ce0ca2eebbfc5bebd9daebcfc861907e27'
$checksum64  = '9dc7d28b556e27f0bb1388f439dd79013f2cdb2cebaa8d27b9de9c120b5bc807'

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
