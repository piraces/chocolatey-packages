$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.0.366-pre-1/flyctl_0.0.366-pre-1_Windows_x86_64.zip'
$checksum64  = '46db1b4f38b23cef2dc6a2f76c1510bb2be5fbeebef28d604cd56ca5eaed9cf1'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
