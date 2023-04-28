$ErrorActionPreference = 'Stop'

$packageName = 'dagger'
$url64       = 'https://dagger-io.s3.amazonaws.com/dagger/releases/0.5.1/dagger_v0.5.1_windows_amd64.zip'
$checksum64  = 'cbb6c32417a680eb8a15fae0e7bc9a10ab0cb6d96195500fec7b91e03ce1dbea'

$packageArgs = @{
  packageName    = $packageName
  url64          = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
