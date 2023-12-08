$ErrorActionPreference = 'Stop'

$packageName = 'dagger'
$url64       = 'https://dl.dagger.io/dagger/releases/0.9.4/dagger_v0.9.4_windows_amd64.zip'
$checksum64  = '839c289ff6a3e8941b59767ba91b3cec084cd9c32130be5b5b9e4d5e9afb7ac5'

$packageArgs = @{
  packageName    = $packageName
  url64          = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
