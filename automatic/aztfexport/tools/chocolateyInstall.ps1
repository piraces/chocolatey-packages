$ErrorActionPreference = 'Stop'

$packageName = 'aztfexport'
$url32       = 'https://github.com/Azure/aztfexport/releases/download/v0.19.0/aztfexport_v0.19.0_windows_386.zip'
$url64       = 'https://github.com/Azure/aztfexport/releases/download/v0.19.0/aztfexport_v0.19.0_windows_amd64.zip'
$checksum32  = '820ffc896b2ba0c09fa858e0e4f153c905e43b640c507e87f161ddf0e6304873'
$checksum64  = '3af58b21d56f21e0b470e6cd97c4209ec64ee132d3568980d63c3078e4cf53ec'

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
