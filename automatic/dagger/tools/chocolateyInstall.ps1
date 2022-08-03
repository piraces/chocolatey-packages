$ErrorActionPreference = 'Stop'

$packageName = 'dagger'
$url64       = 'https://github.com/dagger/dagger/releases/download/v0.2.28/dagger_v0.2.28_windows_amd64.zip'
$checksum64  = 'c9dad47f09221cc7f1e47bae5fa8a83cf48bc26f1bee003432ed2a8b734a13ef'

$packageArgs = @{
  packageName    = $packageName
  url64          = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
