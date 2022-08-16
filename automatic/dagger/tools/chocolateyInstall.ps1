$ErrorActionPreference = 'Stop'

$packageName = 'dagger'
$url64       = 'https://github.com/dagger/dagger/releases/download/v0.2.30/dagger_v0.2.30_windows_amd64.zip'
$checksum64  = '9700d3165b0b2e1ae314f0d9d9dcbb38e7882962c499ee14f8ab0baee133e47d'

$packageArgs = @{
  packageName    = $packageName
  url64          = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
