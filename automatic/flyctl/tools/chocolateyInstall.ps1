$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.0.540/flyctl_0.0.540_Windows_x86_64.zip'
$checksum64  = 'eca080ae5a3c3e59429dc4baac7ec75a3b879f28fe8551a0cf0bbad89c2adf01'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
