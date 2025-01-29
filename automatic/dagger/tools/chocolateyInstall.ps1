$ErrorActionPreference = 'Stop'

$packageName = 'dagger'
$url64       = 'https://dl.dagger.io/dagger/releases/0.15.3/dagger_v0.15.3_windows_amd64.zip'
$checksum64  = '68bfe702854c2c4cef840d58937a4862cdc4f21224a1520aa7b9feca926fbedc'

$packageArgs = @{
  packageName    = $packageName
  url64          = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
