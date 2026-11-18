$ErrorActionPreference = 'Stop'

$packageName = 'dagger'
$url64       = 'https://dl.dagger.io/dagger/releases/0.21.12/dagger_v0.21.12_windows_amd64.zip'
$checksum64  = '990ef9cd7050ae1a911f5dc7d4a2a6e511dd665f63935b4d0c2678ba539513c8'

$packageArgs = @{
  packageName    = $packageName
  url64          = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
