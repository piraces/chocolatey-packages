$ErrorActionPreference = 'Stop'

$packageName = 'goreleaser'
$url32       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.11.2/goreleaser_Windows_i386.zip'
$url64       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.11.2/goreleaser_Windows_x86_64.zip'
$checksum32  = 'db64850d52517c377ae145be2d6aa7a96fb010d13ef6cf13101a21f6a772c9bd'
$checksum64  = 'f31209d8151e0b782ac1bd91af35a1a5696cea9f4814a2377931f1781dc3e126'

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

