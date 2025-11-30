$ErrorActionPreference = 'Stop'

$packageName = 'goreleaser'
$url32       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.13.0/goreleaser_Windows_i386.zip'
$url64       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.13.0/goreleaser_Windows_x86_64.zip'
$checksum32  = '2b3187a3ddab01469b2d75072638ce1b95950328bb76c94744354ce95701ca9c'
$checksum64  = '2c1a202acc04d53c40aba2ae38922f18cd9fc64f863a80cbb57d0a623fac1b11'

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

