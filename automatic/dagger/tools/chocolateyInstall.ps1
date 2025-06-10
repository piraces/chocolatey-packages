$ErrorActionPreference = 'Stop'

$packageName = 'dagger'
$url64       = 'https://dl.dagger.io/dagger/releases/0.18.10/dagger_v0.18.10_windows_amd64.zip'
$checksum64  = 'fc007c0000b735df4872a10bdb5b0f3e3c96b292bb3c5f7aae062a63ec45d924'

$packageArgs = @{
  packageName    = $packageName
  url64          = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
