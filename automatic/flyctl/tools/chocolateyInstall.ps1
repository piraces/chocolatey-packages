$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.0.416/flyctl_0.0.416_Windows_x86_64.zip'
$checksum64  = 'e0b14192389e7b6173c1a5c78df2b9df4a7ed952822b69a1e1bb0ab78a8ddf29'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
