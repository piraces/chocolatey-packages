$ErrorActionPreference = 'Stop'

$packageName = 'dagger'
$url64       = 'https://dl.dagger.io/dagger/releases/0.20.1/dagger_v0.20.1_windows_amd64.zip'
$checksum64  = 'db6b1e4221f0b66e94925163c463ba43626e1440029055644a6c1c9e8a5a0707'

$packageArgs = @{
  packageName    = $packageName
  url64          = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
