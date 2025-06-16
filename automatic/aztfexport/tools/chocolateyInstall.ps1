$ErrorActionPreference = 'Stop'

$packageName = 'aztfexport'
$url32       = 'https://github.com/Azure/aztfexport/releases/download/v0.18.0/aztfexport_v0.18.0_windows_386.zip'
$url64       = 'https://github.com/Azure/aztfexport/releases/download/v0.18.0/aztfexport_v0.18.0_windows_amd64.zip'
$checksum32  = '92a3f8b72852074f3ef0797fff844a449c057f7b64c70bfb25971779805fa0c5'
$checksum64  = 'd8d5d5189129f97a1be79374146b72c97cab2b68c62f1af0218ee276e0916dc8'

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
