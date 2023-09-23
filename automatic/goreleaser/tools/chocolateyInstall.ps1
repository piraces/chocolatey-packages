$ErrorActionPreference = 'Stop'

$packageName = 'goreleaser'
$url32       = 'https://github.com/goreleaser/goreleaser/releases/download/v1.21.0/goreleaser_Windows_i386.zip'
$url64       = 'https://github.com/goreleaser/goreleaser/releases/download/v1.21.0/goreleaser_Windows_x86_64.zip'
$checksum32  = 'a95c4c504938d6d0ad6a39e76dc0c83266596bcb9dd017b482c67dcd2c35c495'
$checksum64  = 'f6f49f43bb1d5cd07c759ea6ae23671fd565e52847ab515a26dc9b27931d9b50'

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

