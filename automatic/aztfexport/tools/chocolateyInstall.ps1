$ErrorActionPreference = 'Stop'

$packageName = 'aztfexport'
$url32       = 'https://github.com/Azure/aztfexport/releases/download/v0.20.0/aztfexport_v0.20.0_windows_386.zip'
$url64       = 'https://github.com/Azure/aztfexport/releases/download/v0.20.0/aztfexport_v0.20.0_windows_amd64.zip'
$checksum32  = '6641c8955e9d1512feb1c640093a0670a91ba063722b715d77c6c3cd5c5b914b'
$checksum64  = 'aa9f8fb6c2a5aa8b32f9d844a15f883bccc5d4d557f66a7d864f2a8ee40667dc'

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
