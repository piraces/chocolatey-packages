$ErrorActionPreference = 'Stop'

$packageName = 'aztfexport'
$url32       = 'https://github.com/Azure/aztfexport/releases/download/v0.15.0/aztfexport_v0.15.0_windows_386.zip'
$url64       = 'https://github.com/Azure/aztfexport/releases/download/v0.15.0/aztfexport_v0.15.0_windows_amd64.zip'
$checksum32  = 'aa1f32a145796e1587c682ffc399708e75a4c492a332b514bf591ac73247627f'
$checksum64  = '84646be5d98960fcb2f067bace4110a991c76d4f6da48aa088fb114c059a564b'

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
