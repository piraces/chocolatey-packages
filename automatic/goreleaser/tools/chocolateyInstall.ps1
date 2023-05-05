$ErrorActionPreference = 'Stop'

$packageName = 'goreleaser'
$url32       = 'https://github.com/goreleaser/goreleaser/releases/download/v1.18.1/goreleaser_Windows_i386.zip'
$url64       = 'https://github.com/goreleaser/goreleaser/releases/download/v1.18.1/goreleaser_Windows_x86_64.zip'
$checksum32  = 'c683f31e95048dd09f9cd20ff93a0a9331d281dfbda7688bdd6c3a25aa3ad11f'
$checksum64  = '1af2e28ef1d6236424568ebc4a3e794103930ec1bf110b8a46491172f5b04fec'

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

