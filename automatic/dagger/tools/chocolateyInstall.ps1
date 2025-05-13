$ErrorActionPreference = 'Stop'

$packageName = 'dagger'
$url64       = 'https://dl.dagger.io/dagger/releases/0.18.7/dagger_v0.18.7_windows_amd64.zip'
$checksum64  = 'f7a48a9684e547e92e466d47e6b22c61d966a5eb1ae22ba5037f81f6e23f5862'

$packageArgs = @{
  packageName    = $packageName
  url64          = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
