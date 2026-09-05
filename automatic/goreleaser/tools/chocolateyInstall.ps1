$ErrorActionPreference = 'Stop'

$packageName = 'goreleaser'
$url32       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.18.1/goreleaser_Windows_i386.zip'
$url64       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.18.1/goreleaser_Windows_x86_64.zip'
$checksum32  = 'bf9c7a9e0dd53c4b211859b0c7fd9783efbecb1cd6f5de8b3bf3bd022f4a3c39'
$checksum64  = 'dbb3112f619c4827311b726b3c98047bce69af1ecee99984d55d450c04c471fc'

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

