$ErrorActionPreference = 'Stop'

$packageName = 'dagger'
$url64       = 'https://github.com/dagger/dagger/releases/download/v0.2.5/dagger_v0.2.5_windows_amd64.zip'
$checksum64  = '872abeb12125f45e59969b208716a95371ff48a2dd39508c39731bd5f5ab8306'

$packageArgs = @{
  packageName    = $packageName
  url            = $url64
  checksum       = $checksum64
  checksumType   = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
