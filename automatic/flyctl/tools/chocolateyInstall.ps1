$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.1.12/flyctl_0.1.12_Windows_x86_64.zip'
$checksum64  = '0372eaec685c609838d63d0a3773bd89799e941ed8ffcbaf5b8cee2c5e31f0bd'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
