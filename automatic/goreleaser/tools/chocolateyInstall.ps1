$ErrorActionPreference = 'Stop'

$packageName = 'goreleaser'
$url32       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.14.0/goreleaser_Windows_i386.zip'
$url64       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.14.0/goreleaser_Windows_x86_64.zip'
$checksum32  = '7e1ed5e68688dd2e588219901c44345db743e00db5639c8cd829908f3b705874'
$checksum64  = '2cf253fa3a2b89fd2265032a1cd50cfbd7a6ae09223b909cbc21314454e14942'

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

