$ErrorActionPreference = 'Stop'

$packageName = 'dagger'
$url64       = 'https://dl.dagger.io/dagger/releases/0.12.3/dagger_v0.12.3_windows_amd64.zip'
$checksum64  = 'e1b79deb93dbe6d01550fbda8cedc195cfa4e872a20d5062895aff5fd14075c0'

$packageArgs = @{
  packageName    = $packageName
  url64          = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
