$ErrorActionPreference = 'Stop'

$packageName = 'dagger'
$url64       = 'https://dl.dagger.io/dagger/releases/0.20.3/dagger_v0.20.3_windows_amd64.zip'
$checksum64  = 'cd59f1c486c7c32034ce0ece80990688e92458d1896a7bbdd9c5e2011be6cc49'

$packageArgs = @{
  packageName    = $packageName
  url64          = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
