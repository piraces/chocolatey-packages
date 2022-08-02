$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.0.364-pre-3/flyctl_0.0.364-pre-3_Windows_x86_64.zip'
$checksum64  = '49fbae3f5b65422f3bcb8a248e041cdcb0f12e65176575820b99f2e09b1f651b'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
