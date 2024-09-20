$ErrorActionPreference = 'Stop'

$packageName = 'dagger'
$url64       = 'https://dl.dagger.io/dagger/releases/0.13.2/dagger_v0.13.2_windows_amd64.zip'
$checksum64  = 'bb16cf2a1f5c2b91e3cea38912e75db58c5976815c0e0d6418711dff0aa6ebe5'

$packageArgs = @{
  packageName    = $packageName
  url64          = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
