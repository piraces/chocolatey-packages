$ErrorActionPreference = 'Stop'

$packageName = 'goreleaser'
$url32       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.12.3/goreleaser_Windows_i386.zip'
$url64       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.12.3/goreleaser_Windows_x86_64.zip'
$checksum32  = '071003eb22d6d8a262a34d05cfe5b77f63e990a341af562f77e1cd67db2acb8c'
$checksum64  = '2d7e94d17806ed2eb704870716e66218ac8d062bfdb7dc105e575564aa54adfe'

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

