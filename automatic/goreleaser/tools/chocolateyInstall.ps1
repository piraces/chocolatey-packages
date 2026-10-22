$ErrorActionPreference = 'Stop'

$packageName = 'goreleaser'
$url32       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.19.0/goreleaser_Windows_i386.zip'
$url64       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.19.0/goreleaser_Windows_x86_64.zip'
$checksum32  = '796e2d925fad9c79cea940265d2503dc8328401a125b8f4a8fffef0c1a0f4c75'
$checksum64  = '67807490e909a37f58ef40b67601896d8d4da2411c9839221dae55732c243fe9'

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

