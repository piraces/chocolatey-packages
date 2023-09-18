$ErrorActionPreference = 'Stop'

$packageName = 'dagger'
$url64       = 'https://dagger-io.s3.amazonaws.com/dagger/releases/0.8.6/dagger_v0.8.6_windows_amd64.zip'
$checksum64  = '94e7a0166a4ba6d3552ec0a4635110226a2baf6b083c4fd0b60935e5e75beafe'

$packageArgs = @{
  packageName    = $packageName
  url64          = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
