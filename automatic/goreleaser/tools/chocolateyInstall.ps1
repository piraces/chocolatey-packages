$ErrorActionPreference = 'Stop'

$packageName = 'goreleaser'
$url32       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.20.0/goreleaser_Windows_i386.zip'
$url64       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.20.0/goreleaser_Windows_x86_64.zip'
$checksum32  = 'a0a72653b99eefd9855f69b9bbb717757956881f4c2190416a5a1c505eeb9de4'
$checksum64  = '3c6a58f6941224a25ec28de733554743e9b2517c40c76991eef5474f8c1c2c1a'

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

