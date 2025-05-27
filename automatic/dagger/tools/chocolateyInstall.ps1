$ErrorActionPreference = 'Stop'

$packageName = 'dagger'
$url64       = 'https://dl.dagger.io/dagger/releases/0.18.9/dagger_v0.18.9_windows_amd64.zip'
$checksum64  = '15c651fd0225abcf474e74f2a2b268232e55ef8c8c620b5dc55a1b962d2de1cd'

$packageArgs = @{
  packageName    = $packageName
  url64          = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
