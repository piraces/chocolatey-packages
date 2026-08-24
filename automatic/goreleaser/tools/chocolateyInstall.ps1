$ErrorActionPreference = 'Stop'

$packageName = 'goreleaser'
$url32       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.18.0/goreleaser_Windows_i386.zip'
$url64       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.18.0/goreleaser_Windows_x86_64.zip'
$checksum32  = '68c2e2ceab40952a085817105060e65d71d82c1b372631d071454d06326ead90'
$checksum64  = 'cbd0aeab833806b6c07e2d156c2c9baaffa6e3d1fb870071bf3efc9d9e5b4777'

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

