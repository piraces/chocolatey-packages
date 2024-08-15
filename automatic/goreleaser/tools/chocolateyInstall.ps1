$ErrorActionPreference = 'Stop'

$packageName = 'goreleaser'
$url32       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.2.0/goreleaser_Windows_i386.zip'
$url64       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.2.0/goreleaser_Windows_x86_64.zip'
$checksum32  = 'f167314a4b32d561a2a0a39b7243833bd63ebf2def38fbffedb073b621c701d7'
$checksum64  = '5c63632f07e19190f09ac474eaf9f7f9c9e1db1c80efc4e4925acef7f1f5dfe2'

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

