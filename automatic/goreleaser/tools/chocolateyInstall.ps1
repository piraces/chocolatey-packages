$ErrorActionPreference = 'Stop'

$packageName = 'goreleaser'
$url32       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.12.4/goreleaser_Windows_i386.zip'
$url64       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.12.4/goreleaser_Windows_x86_64.zip'
$checksum32  = '9df6377446165db9ee86b01d663ea187f4e792aebe8df9af6b7df20771d54604'
$checksum64  = '46a193fa1bb3ed13ab848203c8c0e630cad01ea67578295919ffb7f590d43a88'

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

