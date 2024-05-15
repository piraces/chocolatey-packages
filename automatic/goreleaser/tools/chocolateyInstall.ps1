$ErrorActionPreference = 'Stop'

$packageName = 'goreleaser'
$url32       = 'https://github.com/goreleaser/goreleaser/releases/download/v1.26.1/goreleaser_Windows_i386.zip'
$url64       = 'https://github.com/goreleaser/goreleaser/releases/download/v1.26.1/goreleaser_Windows_x86_64.zip'
$checksum32  = '601d8675ea3c72dd05dbedb9a4249bf9198ebe0dbe3cdb085bfe717834d4032a'
$checksum64  = '931af9ca373ee204b4dbd43b878caedaaa5b9f76da0a955e9f84c879c38087b5'

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

