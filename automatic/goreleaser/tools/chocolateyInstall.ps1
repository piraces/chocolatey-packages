$ErrorActionPreference = 'Stop'

$packageName = 'goreleaser'
$url32       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.12.0/goreleaser_Windows_i386.zip'
$url64       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.12.0/goreleaser_Windows_x86_64.zip'
$checksum32  = 'c07db9eb712f1e2715be2ce48cb0ba0f01c2843f485232f57f918206212e8c79'
$checksum64  = '8881753507b18b96f371b6ef9c3b68db91acca8e0cf314000149aea81711aff2'

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

