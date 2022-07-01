$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.0.346/flyctl_0.0.346_Windows_x86_64.zip'
$checksum64  = 'e23ce1f2f17fa11ae1de06999b28d434332a31f9984868f4c80d452e1b3a1ff4'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
