$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.0.370/flyctl_0.0.370_Windows_x86_64.zip'
$checksum64  = 'b6cb4c76d14d006899d264964f43e4fe46f87a6ec9f4f88a3418c113c229c11d'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
