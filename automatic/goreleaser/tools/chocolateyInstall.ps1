$ErrorActionPreference = 'Stop'

$packageName = 'goreleaser'
$url32       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.16.0/goreleaser_Windows_i386.zip'
$url64       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.16.0/goreleaser_Windows_x86_64.zip'
$checksum32  = 'd5b702f899a357670e1bd6ecc692a35baa61974185adb968c51ca441776cab7f'
$checksum64  = '6fe5eda11f0bcac8069aff3ef3dcb0b11816c9e95f89773595564697a5278bc9'

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

