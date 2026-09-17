$ErrorActionPreference = 'Stop'

$packageName = 'goreleaser'
$url32       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.18.2/goreleaser_Windows_i386.zip'
$url64       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.18.2/goreleaser_Windows_x86_64.zip'
$checksum32  = '6de06d4ad1200483eff45f51f0274131a9b1b2f1a057ec9b8aba2825120a8557'
$checksum64  = 'de61a8e7a064abb14210b16c942facd299643d83341c5cd293f19155a7c8b95f'

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

