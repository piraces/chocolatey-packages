$ErrorActionPreference = 'Stop'

$packageName = 'aztfy'
$url32       = 'https://github.com/Azure/aztfy/releases/download/v0.4.0/aztfy_v0.4.0_windows_386.zip'
$url64       = 'https://github.com/Azure/aztfy/releases/download/v0.4.0/aztfy_v0.4.0_windows_amd64.zip'
$checksum32  = '1b06ad238d01ee9ae6ee9e31f24cab7777cc4ee625ddfab32e50d9729ec9d947'
$checksum64  = '38e33db61a7add51161fe8ef3d76690d2aa52e8ccfc3a0ae6931915a2b509be1'

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
