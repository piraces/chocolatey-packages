$ErrorActionPreference = 'Stop'

$packageName = 'goreleaser'
$url32       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.3.0/goreleaser_Windows_i386.zip'
$url64       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.3.0/goreleaser_Windows_x86_64.zip'
$checksum32  = '054206e4b9c73f232a3ca46d3aea5f88cd845dd2a12c7c598e1e5ae006b14aee'
$checksum64  = '746eb138a4defd1337aeed1a39ff9bb8bf35f23b905051f46e2e3b3fe0222da2'

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

