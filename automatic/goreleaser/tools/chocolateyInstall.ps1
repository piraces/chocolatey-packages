$ErrorActionPreference = 'Stop'

$packageName = 'goreleaser'
$url32       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.3.1/goreleaser_Windows_i386.zip'
$url64       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.3.1/goreleaser_Windows_x86_64.zip'
$checksum32  = 'f7d1691ccdf30939575e58ed2f1d8c8a2e9abd9326f5c52faf9989c7749495e7'
$checksum64  = '501072b255f7e4c942815fd057f8bba7861731480dd67d4c7966d216a25ac126'

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

