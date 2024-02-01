$ErrorActionPreference = 'Stop'

$packageName = 'dagger'
$url64       = 'https://dl.dagger.io/dagger/releases/0.9.8/dagger_v0.9.8_windows_amd64.zip'
$checksum64  = 'aa7e7449ad30e7d2e6399269d90da3dd0a5529880319475acb4d1ea1ea8ea02c'

$packageArgs = @{
  packageName    = $packageName
  url64          = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
