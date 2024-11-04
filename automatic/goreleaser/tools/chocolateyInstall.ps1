$ErrorActionPreference = 'Stop'

$packageName = 'goreleaser'
$url32       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.4.2/goreleaser_Windows_i386.zip'
$url64       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.4.2/goreleaser_Windows_x86_64.zip'
$checksum32  = '12e49d18e2e748a7f161b78460167dff413c67c7683efdaaa9d5a6a2a85c9ecf'
$checksum64  = 'd9d39320dc6809c79a74e5e5623bee6da24637ea0d5eb72fb06c78305c3bfb66'

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

