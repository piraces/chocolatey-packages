$ErrorActionPreference = 'Stop'

$packageName = 'dagger'
$url64       = 'https://dl.dagger.io/dagger/releases/0.19.6/dagger_v0.19.6_windows_amd64.zip'
$checksum64  = '193c7091830193cc34a024f492ab66cc5387ca7908e4e4bcadb1f1e2d468e56e'

$packageArgs = @{
  packageName    = $packageName
  url64          = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
