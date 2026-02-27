$ErrorActionPreference = 'Stop'

$packageName = 'dagger'
$url64       = 'https://dl.dagger.io/dagger/releases/0.20.0/dagger_v0.20.0_windows_amd64.zip'
$checksum64  = '6363dacd70046d1a50bf77f05cb5056eadf5c062c9ae3d6cf7e11388f56d92f6'

$packageArgs = @{
  packageName    = $packageName
  url64          = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
