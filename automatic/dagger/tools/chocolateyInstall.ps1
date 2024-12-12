$ErrorActionPreference = 'Stop'

$packageName = 'dagger'
$url64       = 'https://dl.dagger.io/dagger/releases/0.15.1/dagger_v0.15.1_windows_amd64.zip'
$checksum64  = '827ad1c9181da46b169cd1013e115c5fb85167861ecfdc88d0826ec567a6fceb'

$packageArgs = @{
  packageName    = $packageName
  url64          = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
