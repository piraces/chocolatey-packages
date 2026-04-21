$ErrorActionPreference = 'Stop'

$packageName = 'goreleaser'
$url32       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.15.4/goreleaser_Windows_i386.zip'
$url64       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.15.4/goreleaser_Windows_x86_64.zip'
$checksum32  = 'd9026cfdfe93353850280d590e689c553fd541c1205ad9e36a9a204b40cd40a3'
$checksum64  = '146695f49717dfd79d64d5d6f4b1d25e2b56d73e723bbf68a8dc13ce5cf69693'

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

