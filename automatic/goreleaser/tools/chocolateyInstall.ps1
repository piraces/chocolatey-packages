$ErrorActionPreference = 'Stop'

$packageName = 'goreleaser'
$url32       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.10.1/goreleaser_Windows_i386.zip'
$url64       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.10.1/goreleaser_Windows_x86_64.zip'
$checksum32  = '55ebd0897c73d56231fec8aa98229cf5c10e8b1b1417850d36f4ee5fd44870c3'
$checksum64  = '810ed3a0b2ebb4df4fc1fd167feb4ac8b326e0a2d6e92c46b19d260362a8d60d'

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

