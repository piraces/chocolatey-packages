$ErrorActionPreference = 'Stop'

$packageName = 'goreleaser'
$url32       = 'https://github.com/goreleaser/goreleaser/releases/download/v1.19.0/goreleaser_Windows_i386.zip'
$url64       = 'https://github.com/goreleaser/goreleaser/releases/download/v1.19.0/goreleaser_Windows_x86_64.zip'
$checksum32  = 'f02ee5f19ee54c66599f504b775f548cbc947109f08d74f0899299b4300559da'
$checksum64  = 'f8d5366fff9522bcc69107f72612e4e17d2f2cafeeffd44621d681fbb4873c68'

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

