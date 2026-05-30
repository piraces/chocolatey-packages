$ErrorActionPreference = 'Stop'

$packageName = 'dagger'
$url64       = 'https://dl.dagger.io/dagger/releases/0.21.2/dagger_v0.21.2_windows_amd64.zip'
$checksum64  = 'cbfce401bc30abea1b198f09ffe6d94f01441fd13259a234acdfca5ed023d74a'

$packageArgs = @{
  packageName    = $packageName
  url64          = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
