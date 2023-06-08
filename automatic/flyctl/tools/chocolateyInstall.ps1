$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.1.32/flyctl_0.1.32_Windows_x86_64.zip'
$checksum64  = 'd7d2818a391459f8cff2925b7d9fbf0bc6ca6c1c319d9e3c38331e7f99b90e25'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
