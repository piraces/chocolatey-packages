$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.0.371-pre-1/flyctl_0.0.371-pre-1_Windows_x86_64.zip'
$checksum64  = '3851362cd5fb2e4a5ba527424d0ad54463ceca8b32398a8d9aa018e04ed2748b'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
