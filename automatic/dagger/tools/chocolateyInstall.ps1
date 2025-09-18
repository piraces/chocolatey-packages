$ErrorActionPreference = 'Stop'

$packageName = 'dagger'
$url64       = 'https://dl.dagger.io/dagger/releases/0.18.19/dagger_v0.18.19_windows_amd64.zip'
$checksum64  = 'd3dc9d1a26eedb289d3b8e6cdfd9beaaebb2b7077de91e52a6441563aa435cf2'

$packageArgs = @{
  packageName    = $packageName
  url64          = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
