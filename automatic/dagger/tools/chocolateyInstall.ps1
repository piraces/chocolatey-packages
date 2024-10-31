$ErrorActionPreference = 'Stop'

$packageName = 'dagger'
$url64       = 'https://dl.dagger.io/dagger/releases/0.13.7/dagger_v0.13.7_windows_amd64.zip'
$checksum64  = 'b66d5f98eb22d049dd3428e2260e2f1c5b76ab9e75b6cb648906fd2f06d65057'

$packageArgs = @{
  packageName    = $packageName
  url64          = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
