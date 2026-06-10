$ErrorActionPreference = 'Stop'

$packageName = 'dagger'
$url64       = 'https://dl.dagger.io/dagger/releases/0.21.5/dagger_v0.21.5_windows_amd64.zip'
$checksum64  = '7c85afbd9233ded88a0a74252727324797c5e04681fd905e7516717be68c5d24'

$packageArgs = @{
  packageName    = $packageName
  url64          = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
