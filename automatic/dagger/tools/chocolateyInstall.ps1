$ErrorActionPreference = 'Stop'

$packageName = 'dagger'
$url64       = 'https://dl.dagger.io/dagger/releases/0.21.0/dagger_v0.21.0_windows_amd64.zip'
$checksum64  = 'aadb6bc14151107c04873ba0b679c2a59d0ba7f9ab6a16d641bff8b1dd3c93e6'

$packageArgs = @{
  packageName    = $packageName
  url64          = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
