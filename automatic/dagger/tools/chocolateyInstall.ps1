$ErrorActionPreference = 'Stop'

$packageName = 'dagger'
$url64       = 'https://dl.dagger.io/dagger/releases/0.15.0/dagger_v0.15.0_windows_amd64.zip'
$checksum64  = '2a0b4d66330b3335733e6ed93eb187a05a5cd69af11e74450540b30ce5d09f7f'

$packageArgs = @{
  packageName    = $packageName
  url64          = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
