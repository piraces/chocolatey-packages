$ErrorActionPreference = 'Stop'

$packageName = 'dagger'
$url64       = 'https://github.com/dagger/dagger/releases/download/v0.2.16/dagger_v0.2.16_windows_amd64.zip'
$checksum64  = 'a6a7422d332de3c4c31776c2e9ed664dafadbbc0d210335009f2c6e6f83cb5f0'

$packageArgs = @{
  packageName    = $packageName
  url64          = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
