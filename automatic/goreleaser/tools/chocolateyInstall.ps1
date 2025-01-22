$ErrorActionPreference = 'Stop'

$packageName = 'goreleaser'
$url32       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.6.0/goreleaser_Windows_i386.zip'
$url64       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.6.0/goreleaser_Windows_x86_64.zip'
$checksum32  = '73723e5150854eaa3726777b554cf1ba1bd24783fa04c543be9576caf19f07db'
$checksum64  = '4c28e8d2d298dee0b3638e1f0cbfe5a49da3762a0051fa28887570e7d6c52137'

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

