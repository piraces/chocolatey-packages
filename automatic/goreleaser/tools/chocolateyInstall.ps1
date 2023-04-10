$ErrorActionPreference = 'Stop'

$packageName = 'goreleaser'
$url32       = 'https://github.com/goreleaser/goreleaser/releases/download/v1.17.0/goreleaser_Windows_i386.zip'
$url64       = 'https://github.com/goreleaser/goreleaser/releases/download/v1.17.0/goreleaser_Windows_x86_64.zip'
$checksum32  = '3595cee9a5b66940dd942edc9187c7200993c92ffd0e909e8ef9aaa9f5ac0d3d'
$checksum64  = '0d7297cee778eff7696e1e40e92d198394aa953ef584ff7242eb6164a9341d40'

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

