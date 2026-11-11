$ErrorActionPreference = 'Stop'

$packageName = 'goreleaser'
$url32       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.20.1/goreleaser_Windows_i386.zip'
$url64       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.20.1/goreleaser_Windows_x86_64.zip'
$checksum32  = '6594ec1e3410aabd3d20e42a5dc0ad1f51125e259ef69d087db72933c210d1e1'
$checksum64  = 'b84ce9966dc8313edb935846431123b8a9d249eb7140a44783a1a45a5addcf5d'

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

