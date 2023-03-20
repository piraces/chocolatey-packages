$ErrorActionPreference = 'Stop'

$packageName = 'goreleaser'
$url32       = 'https://github.com/goreleaser/goreleaser/releases/download/v1.16.2/goreleaser_Windows_i386.zip'
$url64       = 'https://github.com/goreleaser/goreleaser/releases/download/v1.16.2/goreleaser_Windows_x86_64.zip'
$checksum32  = '3e18e44509300025c892d47cccd16a9b5f7bbe4916659c549e09a74fd26a1a3d'
$checksum64  = '9d0817b00447ba152c063eefef7036070c062167911a9308f884ba9c8e7dd86c'

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

