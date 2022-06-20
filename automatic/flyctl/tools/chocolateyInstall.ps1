$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.0.335-pre-2/flyctl_0.0.335-pre-2_Windows_x86_64.zip'
$checksum64  = 'b92fdffb9cef7deb51474416985a850990124045b7fb9ef661ffc54909b0c99e'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
