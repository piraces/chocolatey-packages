$ErrorActionPreference = 'Stop'

$packageName = 'goreleaser'
$url32       = 'https://github.com/goreleaser/goreleaser/releases/download/v1.16.1/goreleaser_Windows_i386.zip'
$url64       = 'https://github.com/goreleaser/goreleaser/releases/download/v1.16.1/goreleaser_Windows_x86_64.zip'
$checksum32  = '2dd7229a9b44756f64ccf932a9b9c3426b2614c322f8233130b3e4ebc295e873'
$checksum64  = '1b5c2a3d3a507e909c6fdf8d2061590a0933d695cce9ba37467f7a3b283a83f4'

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

