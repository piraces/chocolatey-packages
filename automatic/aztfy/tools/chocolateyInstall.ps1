$ErrorActionPreference = 'Stop'

$packageName = 'aztfy'
$url32       = 'https://github.com/Azure/aztfy/releases/download/v0.6.0/aztfy_v0.6.0_windows_386.zip'
$url64       = 'https://github.com/Azure/aztfy/releases/download/v0.6.0/aztfy_v0.6.0_windows_amd64.zip'
$checksum32  = '5da194a8073efe25e60ba7bd75f76e6f7357a91c0c0c9b3c64509664085ac647'
$checksum64  = '9e730dad9cec91d9438dba49a359b93573a72d473aa0d9a9f2064f10b0bb3005'

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
