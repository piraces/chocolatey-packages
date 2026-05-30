$ErrorActionPreference = 'Stop'

$packageName = 'dagger'
$url64       = 'https://dl.dagger.io/dagger/releases/0.21.3/dagger_v0.21.3_windows_amd64.zip'
$checksum64  = '9148f1ae5693ea72e9b53981a32b914218d49f62ff3bf8d99f98d2f04051e091'

$packageArgs = @{
  packageName    = $packageName
  url64          = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
