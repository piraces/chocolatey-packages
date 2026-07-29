$ErrorActionPreference = 'Stop'

$packageName = 'dagger'
$url64       = 'https://dl.dagger.io/dagger/releases/0.21.8/dagger_v0.21.8_windows_amd64.zip'
$checksum64  = '7452d17f7f6b01d409fe27b8fd1655162b5b4d2cd531c704f2373e62eba512d5'

$packageArgs = @{
  packageName    = $packageName
  url64          = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
