$ErrorActionPreference = 'Stop'

$packageName = 'dagger'
$url64       = 'https://github.com/dagger/dagger/releases/download/v0.2.13/dagger_v0.2.13_windows_amd64.zip'
$checksum64  = '21af3a6a108ee78c6fc917e29c071c14b009db348ce5552c1d9d9dd0aac72bdf'

$packageArgs = @{
  packageName    = $packageName
  url64          = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
