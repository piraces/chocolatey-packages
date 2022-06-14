$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.0.334-pre-3/flyctl_0.0.334-pre-3_Windows_x86_64.zip'
$checksum64  = 'de74a9b38fa4bbfb33f195db39e310c7fb4c43be6239b42d15109b5a15a5f25f'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
