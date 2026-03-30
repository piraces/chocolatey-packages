$ErrorActionPreference = 'Stop'

$packageName = 'goreleaser'
$url32       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.15.1/goreleaser_Windows_i386.zip'
$url64       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.15.1/goreleaser_Windows_x86_64.zip'
$checksum32  = '94f3a7541cf95b2f57cd9131495bbd49dc14f5ad77774043411d346a8e9fa964'
$checksum64  = 'eea84855c779e0fca328da9e0b9683e888707fefeec361ea3fe64f4c990ce652'

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

