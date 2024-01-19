$ErrorActionPreference = 'Stop'

$packageName = 'dagger'
$url64       = 'https://dl.dagger.io/dagger/releases/0.9.7/dagger_v0.9.7_windows_amd64.zip'
$checksum64  = 'c1ccac5be92571a5e2350112b5321c3c6d055003b0f833d01f5a2bc938a5fc77'

$packageArgs = @{
  packageName    = $packageName
  url64          = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
