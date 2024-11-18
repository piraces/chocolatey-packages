$ErrorActionPreference = 'Stop'

$packageName = 'goreleaser'
$url32       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.4.7/goreleaser_Windows_i386.zip'
$url64       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.4.7/goreleaser_Windows_x86_64.zip'
$checksum32  = '0d590fd862f8ff61b11c7c35c28179f31bd0d1de25399a2d1a95fee067e59e3c'
$checksum64  = 'c4b5670bbb783bb913e6211ab48979ff6967ef237966dacb6797dc3e0c50a029'

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

