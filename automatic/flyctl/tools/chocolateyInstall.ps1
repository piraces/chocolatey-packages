$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.0.447/flyctl_0.0.447_Windows_x86_64.zip'
$checksum64  = 'd3c85ec6385ebfb9841c66b2b01e7cad544e3fc39f35867ea9e0179ca2806888'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
