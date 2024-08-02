$ErrorActionPreference = 'Stop'

$packageName = 'dagger'
$url64       = 'https://dl.dagger.io/dagger/releases/0.12.4/dagger_v0.12.4_windows_amd64.zip'
$checksum64  = '61fa1588a67a4a60637a02cdf2c7e92ce6e8e1c674fb3d88f728ed1f616c118b'

$packageArgs = @{
  packageName    = $packageName
  url64          = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
