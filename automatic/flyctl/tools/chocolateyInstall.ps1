$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.0.385/flyctl_0.0.385_Windows_x86_64.zip'
$checksum64  = 'afd513833c567fe3cf6e5c471bff6ea06ef0994eb6424ee5fa343361e8bfe2d0'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
