$ErrorActionPreference = 'Stop'

$packageName = 'aztfexport'
$url32       = 'https://github.com/Azure/aztfexport/releases/download/v0.12.0/aztfexport_v0.12.0_windows_386.zip'
$url64       = 'https://github.com/Azure/aztfexport/releases/download/v0.12.0/aztfexport_v0.12.0_windows_amd64.zip'
$checksum32  = '32096c10c75bc53e98e1aa19c8949f6cd7d1601003865cb5bbc018057430fb37'
$checksum64  = 'f298636a852ca75e78edef7dbdefa2a916f1c3b320283f880c30ff7c584d6cc3'

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
