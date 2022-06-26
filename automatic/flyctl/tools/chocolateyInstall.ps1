$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.0.337-pre-1/flyctl_0.0.337-pre-1_Windows_x86_64.zip'
$checksum64  = '9b38602793a24c43190d3229cc6f0b0d33af136ac85ea20fa7f14677c8ccb9ee'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
