$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.1.55/flyctl_0.1.55_Windows_x86_64.zip'
$checksum64  = '4a0665e9fa57b8c2d2d9d150e47188c9bcbbe072d8536ea03c4fe6fd73c8100e'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
