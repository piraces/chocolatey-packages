$ErrorActionPreference = 'Stop'

$packageName = 'dagger'
$url64       = 'https://dl.dagger.io/dagger/releases/0.18.6/dagger_v0.18.6_windows_amd64.zip'
$checksum64  = 'ef650b5f7563f5abc47d322050b68d82bbf3596fb621dc38e41fdea48c81ea8a'

$packageArgs = @{
  packageName    = $packageName
  url64          = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
