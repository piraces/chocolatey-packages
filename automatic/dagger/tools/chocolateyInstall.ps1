$ErrorActionPreference = 'Stop'

$packageName = 'dagger'
$url64       = 'https://dl.dagger.io/dagger/releases/0.18.5/dagger_v0.18.5_windows_amd64.zip'
$checksum64  = '4cdb702349c3e8515dddfc798ea31f4bda05d8fbd1ea9c96339c64c30ff4de8c'

$packageArgs = @{
  packageName    = $packageName
  url64          = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
