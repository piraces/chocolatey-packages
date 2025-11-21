$ErrorActionPreference = 'Stop'

$packageName = 'dagger'
$url64       = 'https://dl.dagger.io/dagger/releases/0.19.7/dagger_v0.19.7_windows_amd64.zip'
$checksum64  = '575349aa8da6c890fc38b8e220b5a5f0a3bbda0d41b871b5ba743062b6572e93'

$packageArgs = @{
  packageName    = $packageName
  url64          = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
