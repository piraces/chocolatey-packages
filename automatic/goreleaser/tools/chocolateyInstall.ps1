$ErrorActionPreference = 'Stop'

$packageName = 'goreleaser'
$url32       = 'https://github.com/goreleaser/goreleaser/releases/download/v1.20.0/goreleaser_Windows_i386.zip'
$url64       = 'https://github.com/goreleaser/goreleaser/releases/download/v1.20.0/goreleaser_Windows_x86_64.zip'
$checksum32  = '980bc358aa58980320d59b45ac6ca9db440e6388196e39c9b6a38fe653b68156'
$checksum64  = '87ad7f3766b3f181e97579f8a33b65475a71d8302c5519c4f0885b76a10bed8d'

$packageArgs = @{
  packageName    = $packageName
  url            = $url32
  url64Bit       = $url64
  checksum       = $checksum32
  checksum64     = $checksum64
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}

Install-ChocolateyZipPackage @packageArgs

