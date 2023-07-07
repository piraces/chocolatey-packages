$ErrorActionPreference = 'Stop'

$packageName = 'goreleaser'
$url32       = 'https://github.com/goreleaser/goreleaser/releases/download/v1.19.2/goreleaser_Windows_i386.zip'
$url64       = 'https://github.com/goreleaser/goreleaser/releases/download/v1.19.2/goreleaser_Windows_x86_64.zip'
$checksum32  = '18715934d1cceb9b71e4cf7872ff17b620314139e3aee701851a876c185abbd9'
$checksum64  = '11e7991e2a7d842e165472738aae4eab3d9efd9d83f98f3d7836b534d6ee00fd'

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

