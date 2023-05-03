$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.0.551/flyctl_0.0.551_Windows_x86_64.zip'
$checksum64  = '1c346b2d585c5eb3a32c0df096c5f458e37cf41e8f9b2a5707263f87a6bde6e1'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
