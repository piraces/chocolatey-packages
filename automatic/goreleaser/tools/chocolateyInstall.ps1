$ErrorActionPreference = 'Stop'

$packageName = 'goreleaser'
$url32       = 'https://github.com/goreleaser/goreleaser/releases/download/v1.14.1/goreleaser_Windows_i386.zip'
$url64       = 'https://github.com/goreleaser/goreleaser/releases/download/v1.14.1/goreleaser_Windows_x86_64.zip'
$checksum32  = '0aa0c2f08e26d47322e3c91e2d5d690975c28c3a4baaf9c82317245adc666263'
$checksum64  = '734de7027cad17ce4007f58b7c6afc46aa3a7b3d61c1578b7e250da15e4dea28'

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

