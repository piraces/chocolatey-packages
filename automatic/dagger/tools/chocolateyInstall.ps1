$ErrorActionPreference = 'Stop'

$packageName = 'dagger'
$url64       = 'https://dl.dagger.io/dagger/releases/0.13.4/dagger_v0.13.4_windows_amd64.zip'
$checksum64  = 'b5de834517fd0bbfaacd68589cb7ef478bf34dfb67d4db56ec81b0f0066d3cfd'

$packageArgs = @{
  packageName    = $packageName
  url64          = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
