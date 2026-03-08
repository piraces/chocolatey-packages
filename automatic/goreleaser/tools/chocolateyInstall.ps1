$ErrorActionPreference = 'Stop'

$packageName = 'goreleaser'
$url32       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.14.2/goreleaser_Windows_i386.zip'
$url64       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.14.2/goreleaser_Windows_x86_64.zip'
$checksum32  = '3b44c315b754779430c22a249205e74dee28fb973dd9acf1b5fff09374821efd'
$checksum64  = '39cdeba86e042c6e8563871837922152faf1b4ebd359bdf0c18f02df33a05c7a'

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

