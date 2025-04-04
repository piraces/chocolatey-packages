$ErrorActionPreference = 'Stop'

$packageName = 'goreleaser'
$url32       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.8.2/goreleaser_Windows_i386.zip'
$url64       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.8.2/goreleaser_Windows_x86_64.zip'
$checksum32  = 'ce34a3acd54e76e9a991a27d7c2c9f96d227c4f6fa1418d19e8145a3a39d4cba'
$checksum64  = '30d6f5e308708cbe09d249d58f7c6473058dc4b54513b2c8b418ecbf77b5ecd9'

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

