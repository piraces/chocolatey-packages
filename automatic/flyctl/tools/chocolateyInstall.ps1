$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.0.380/flyctl_0.0.380_Windows_x86_64.zip'
$checksum64  = '570a6ebba6449fba8df685e4e9d1e54b18e1f2666a0cbf3c480df0864d7cb478'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
