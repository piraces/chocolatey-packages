$ErrorActionPreference = 'Stop'

$packageName = 'goreleaser'
$url32       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.4.6/goreleaser_Windows_i386.zip'
$url64       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.4.6/goreleaser_Windows_x86_64.zip'
$checksum32  = 'b23e7169c665b04d98997276e0c43fe590f4faa9a659cd3b33d8ed36196636a9'
$checksum64  = '0d6a9cf3b8c9a62068464dd2296471b8fe3ae4589eaaa67381d53b09df89aa99'

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

