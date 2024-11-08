$ErrorActionPreference = 'Stop'

$packageName = 'dagger'
$url64       = 'https://dl.dagger.io/dagger/releases/0.14.0/dagger_v0.14.0_windows_amd64.zip'
$checksum64  = 'f6438baf818b538cdfbaadef5b20a6b00d8e1929b4cbab47f2ed2f2b3a123804'

$packageArgs = @{
  packageName    = $packageName
  url64          = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
