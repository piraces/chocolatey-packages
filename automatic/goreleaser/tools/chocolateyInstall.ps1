$ErrorActionPreference = 'Stop'

$packageName = 'goreleaser'
$url32       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.13.1/goreleaser_Windows_i386.zip'
$url64       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.13.1/goreleaser_Windows_x86_64.zip'
$checksum32  = 'e0d0009bf46e281d21983051188eb59351a2fb3b5b64f30e79f9bc4431aa86bd'
$checksum64  = '25cb285ab0481a9456ca8ef8e39147d4cf018f0990bc560efa3ed2a14e9d7da7'

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

