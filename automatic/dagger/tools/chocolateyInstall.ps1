$ErrorActionPreference = 'Stop'

$packageName = 'dagger'
$url64       = 'https://github.com/dagger/dagger/releases/download/v0.2.21/dagger_v0.2.21_windows_amd64.zip'
$checksum64  = 'eca86749ffaf15c8cbe6bf7d023ef5721a16dca8182f1275288e15ba3b71f9b2'

$packageArgs = @{
  packageName    = $packageName
  url64          = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
