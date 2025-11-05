$ErrorActionPreference = 'Stop'

$packageName = 'dagger'
$url64       = 'https://dl.dagger.io/dagger/releases/0.19.5/dagger_v0.19.5_windows_amd64.zip'
$checksum64  = 'ff3511dbd06b996d0853160ebb0e907514ad1feff2cdec67044c5f40df88e136'

$packageArgs = @{
  packageName    = $packageName
  url64          = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
