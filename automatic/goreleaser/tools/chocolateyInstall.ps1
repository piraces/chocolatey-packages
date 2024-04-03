$ErrorActionPreference = 'Stop'

$packageName = 'goreleaser'
$url32       = 'https://github.com/goreleaser/goreleaser/releases/download/v1.25.0/goreleaser_Windows_i386.zip'
$url64       = 'https://github.com/goreleaser/goreleaser/releases/download/v1.25.0/goreleaser_Windows_x86_64.zip'
$checksum32  = '2b2807a63ea86d9061db3d2419bc79bb621e1ed2bd48ed5f3879c0f35017ab41'
$checksum64  = '5f9b9b398f608a07dcb9584a149673fe7908c3cea51f949d07cc7d68732b2b6e'

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

