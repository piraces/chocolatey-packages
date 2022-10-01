$ErrorActionPreference = 'Stop'

$packageName = 'aztfy'
$url32       = 'https://github.com/Azure/aztfy/releases/download/v0.8.0/aztfy_v0.8.0_windows_386.zip'
$url64       = 'https://github.com/Azure/aztfy/releases/download/v0.8.0/aztfy_v0.8.0_windows_amd64.zip'
$checksum32  = '25a2f1af131676f7869b71616d76800a90c900249ceea1ffcf5a2b34a95da4be'
$checksum64  = '56f0d1b520a706f70c9672664644463416f12e4f9902e0c3da190c91378369f1'

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
