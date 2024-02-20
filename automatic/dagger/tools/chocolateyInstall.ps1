$ErrorActionPreference = 'Stop'

$packageName = 'dagger'
$url64       = 'https://dl.dagger.io/dagger/releases/0.9.11/dagger_v0.9.11_windows_amd64.zip'
$checksum64  = '685dcea53b38ab7fb3f633ac8877449daab440e20d35dcfaa0f8e1f9849d8ac3'

$packageArgs = @{
  packageName    = $packageName
  url64          = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
