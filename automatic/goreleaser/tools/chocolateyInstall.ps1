$ErrorActionPreference = 'Stop'

$packageName = 'goreleaser'
$url32       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.12.7/goreleaser_Windows_i386.zip'
$url64       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.12.7/goreleaser_Windows_x86_64.zip'
$checksum32  = 'ac68032d1df50b146b3d9d719be36c82d41d6ab610bcd0044ac0027708878872'
$checksum64  = 'd8bfa5643ce29645d0bb11bc2aac8061579d14f720ed278e3d75ead8f3f5b0d4'

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

