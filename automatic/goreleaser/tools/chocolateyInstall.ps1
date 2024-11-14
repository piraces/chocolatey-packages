$ErrorActionPreference = 'Stop'

$packageName = 'goreleaser'
$url32       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.4.5/goreleaser_Windows_i386.zip'
$url64       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.4.5/goreleaser_Windows_x86_64.zip'
$checksum32  = '4c324c83f1d8f1a41c6be8a5d28a8a161e89c897a93cae5ed51462035e9023c8'
$checksum64  = 'e0ed6e32a1c3926e649422091fd201ac8ab5d9e22e81dd87198deff9ca664c84'

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

