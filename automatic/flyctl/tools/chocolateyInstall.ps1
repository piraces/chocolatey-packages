$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.0.538/flyctl_0.0.538_Windows_x86_64.zip'
$checksum64  = 'ae6be92a7eeb8569cfaf24f52bc537d987ad7b7e799e14b238b060d66e3c35d1'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
