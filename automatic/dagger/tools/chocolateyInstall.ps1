$ErrorActionPreference = 'Stop'

$packageName = 'dagger'
$url64       = 'https://dl.dagger.io/dagger/releases/0.13.6/dagger_v0.13.6_windows_amd64.zip'
$checksum64  = '5553f43a1f321087bf575a11b2d42d08c4c0bab9062873cc9629f1fb818f26a8'

$packageArgs = @{
  packageName    = $packageName
  url64          = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
