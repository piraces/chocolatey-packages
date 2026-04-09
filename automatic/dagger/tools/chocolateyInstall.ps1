$ErrorActionPreference = 'Stop'

$packageName = 'dagger'
$url64       = 'https://dl.dagger.io/dagger/releases/0.20.5/dagger_v0.20.5_windows_amd64.zip'
$checksum64  = '47b08db82c1a5ffb40b3c94b4dcbe431bc17a24a471ed677b0b860f3cae5a799'

$packageArgs = @{
  packageName    = $packageName
  url64          = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
