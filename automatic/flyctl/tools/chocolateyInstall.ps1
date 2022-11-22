$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.0.435/flyctl_0.0.435_Windows_x86_64.zip'
$checksum64  = 'c34ca5e9383cfc7901e73c32e27afb2eab1f2cc891506e8c3e76d0cbd15d0ecf'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
