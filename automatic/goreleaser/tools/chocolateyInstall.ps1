$ErrorActionPreference = 'Stop'

$packageName = 'goreleaser'
$url32       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.0.1/goreleaser_Windows_i386.zip'
$url64       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.0.1/goreleaser_Windows_x86_64.zip'
$checksum32  = 'f4e22ee9f91f2c5e61c7a2b2bed1bf5972f1e01d775df539abfb8107757fce34'
$checksum64  = '10bdaab0840d96aaefa61758759483be123b4e74a6b203186fa23937b64b1a7e'

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

