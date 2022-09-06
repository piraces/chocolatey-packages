$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.0.388-pre-1/flyctl_0.0.388-pre-1_Windows_x86_64.zip'
$checksum64  = '6f564d774a6c9e26e0a68c8bb681e76a13b1dea56fa699e23d2934b515ab7ac0'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
