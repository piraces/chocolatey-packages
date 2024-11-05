$ErrorActionPreference = 'Stop'

$packageName = 'goreleaser'
$url32       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.4.4/goreleaser_Windows_i386.zip'
$url64       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.4.4/goreleaser_Windows_x86_64.zip'
$checksum32  = 'f2ccd88647a4a773fd282296c21e7890efe064e2462e076e46288856e1ed29bf'
$checksum64  = '305808fd6e9f686448c9d37b4a3c3771b73372446bd255844819fa38ebe95faf'

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

