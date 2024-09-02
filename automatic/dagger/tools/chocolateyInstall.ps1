$ErrorActionPreference = 'Stop'

$packageName = 'dagger'
$url64       = 'https://dl.dagger.io/dagger/releases/0.12.7/dagger_v0.12.7_windows_amd64.zip'
$checksum64  = '70e37adff5af182dd265efc1217b91616041782d1676e26eb1ea801b0e19665d'

$packageArgs = @{
  packageName    = $packageName
  url64          = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
