$ErrorActionPreference = 'Stop'

$packageName = 'goreleaser'
$url32       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.15.2/goreleaser_Windows_i386.zip'
$url64       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.15.2/goreleaser_Windows_x86_64.zip'
$checksum32  = '09f04ea9e992f1e4458b358e1e440334658fac31d949782ddc178b0a7391fbe2'
$checksum64  = '7459832946dbe122c144f8d7f87484d8572ca005b779310aa6bb03346e8de17a'

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

