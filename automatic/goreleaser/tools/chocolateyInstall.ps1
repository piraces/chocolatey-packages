$ErrorActionPreference = 'Stop'

$packageName = 'goreleaser'
$url32       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.13.3/goreleaser_Windows_i386.zip'
$url64       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.13.3/goreleaser_Windows_x86_64.zip'
$checksum32  = '397729363d32fd2a16e48ef95c17d41e15037351ffea8821c801ba65ee982e0e'
$checksum64  = 'c5586c4ed749ca358ad61ed73ee4b8039cfa68daae8c23e69fb086d549dfb31d'

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

