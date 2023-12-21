$ErrorActionPreference = 'Stop'

$packageName = 'dagger'
$url64       = 'https://dl.dagger.io/dagger/releases/0.9.5/dagger_v0.9.5_windows_amd64.zip'
$checksum64  = '0fafbb78f8275c19d4d3d70093d9a65b92aa6336291394d23c4a46a0a736fa59'

$packageArgs = @{
  packageName    = $packageName
  url64          = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
