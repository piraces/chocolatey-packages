$ErrorActionPreference = 'Stop'

$packageName = 'dagger'
$url64       = 'https://dl.dagger.io/dagger/releases/0.9.6/dagger_v0.9.6_windows_amd64.zip'
$checksum64  = '5d7d0b962cf59498eb7177eababe90d3ddfb87a8da945c63efff0b925a774bda'

$packageArgs = @{
  packageName    = $packageName
  url64          = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
