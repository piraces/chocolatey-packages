$ErrorActionPreference = 'Stop'

$packageName = 'goreleaser'
$url32       = 'https://github.com/goreleaser/goreleaser/releases/download/v1.16.0/goreleaser_Windows_i386.zip'
$url64       = 'https://github.com/goreleaser/goreleaser/releases/download/v1.16.0/goreleaser_Windows_x86_64.zip'
$checksum32  = '27a6ccf5468d4d0242d0e66ceae73ed2c0e49e4fd7e20eed0043a108091e5477'
$checksum64  = 'fdfe2dfab28c65f6389e1684d4c3a1ebf695f4be2c15082deb51ec7eb113ecd5'

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

