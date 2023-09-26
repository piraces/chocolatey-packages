$ErrorActionPreference = 'Stop'

$packageName = 'goreleaser'
$url32       = 'https://github.com/goreleaser/goreleaser/releases/download/v1.21.2/goreleaser_Windows_i386.zip'
$url64       = 'https://github.com/goreleaser/goreleaser/releases/download/v1.21.2/goreleaser_Windows_x86_64.zip'
$checksum32  = 'ff2be633920cfa7c3ea7e3db853e774b8961c68cf925b84ad00b5873546a4f8c'
$checksum64  = 'f3624fe15419b022389060fd4778657968531941ae3756edb7418467c14e580b'

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

