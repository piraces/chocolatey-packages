$ErrorActionPreference = 'Stop'

$packageName = 'dagger'
$url64       = 'https://dl.dagger.io/dagger/releases/0.18.16/dagger_v0.18.16_windows_amd64.zip'
$checksum64  = '5d7a5b5071510b3450a5a7d0945987cea0a081d7b7d701d5e5e0e54a028fdc21'

$packageArgs = @{
  packageName    = $packageName
  url64          = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
