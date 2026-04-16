$ErrorActionPreference = 'Stop'

$packageName = 'dagger'
$url64       = 'https://dl.dagger.io/dagger/releases/0.20.6/dagger_v0.20.6_windows_amd64.zip'
$checksum64  = 'd12ae3ce4c03dbd7e3f94deb57fbd40ccb679a8d30fb9efc8c0a0fa51979822a'

$packageArgs = @{
  packageName    = $packageName
  url64          = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
