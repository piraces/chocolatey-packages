$ErrorActionPreference = 'Stop'

$packageName = 'dagger'
$url64       = 'https://dl.dagger.io/dagger/releases/0.21.6/dagger_v0.21.6_windows_amd64.zip'
$checksum64  = '29e9ddccdbd0dc56d5577da09e0fba5dc7ae3cf9ae4869a7c5b18070f6194285'

$packageArgs = @{
  packageName    = $packageName
  url64          = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
