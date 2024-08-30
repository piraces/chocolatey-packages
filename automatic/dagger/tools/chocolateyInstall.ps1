$ErrorActionPreference = 'Stop'

$packageName = 'dagger'
$url64       = 'https://dl.dagger.io/dagger/releases/0.12.6/dagger_v0.12.6_windows_amd64.zip'
$checksum64  = 'ae0a5e2b60f1b31a2952cf990579a8879e2ac68d6a42869392399b6aac51ad98'

$packageArgs = @{
  packageName    = $packageName
  url64          = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
