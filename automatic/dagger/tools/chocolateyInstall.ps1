$ErrorActionPreference = 'Stop'

$packageName = 'dagger'
$url64       = 'https://dl.dagger.io/dagger/releases/0.19.10/dagger_v0.19.10_windows_amd64.zip'
$checksum64  = '86a115a54a82bbd7897f8f5c59c3a85ef1fb41b5c822ca2c8958107ed7044282'

$packageArgs = @{
  packageName    = $packageName
  url64          = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
