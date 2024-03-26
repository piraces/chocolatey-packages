$ErrorActionPreference = 'Stop'

$packageName = 'dagger'
$url64       = 'https://dl.dagger.io/dagger/releases/0.10.3/dagger_v0.10.3_windows_amd64.zip'
$checksum64  = '30f187c33ccd568d3b7da3dd32b7d2dd0e454f16329b8c79673ba9facf682e85'

$packageArgs = @{
  packageName    = $packageName
  url64          = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
