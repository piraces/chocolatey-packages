$ErrorActionPreference = 'Stop'

$packageName = 'goreleaser'
$url32       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.12.2/goreleaser_Windows_i386.zip'
$url64       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.12.2/goreleaser_Windows_x86_64.zip'
$checksum32  = '4d7c5e5f4ede6d8fb154e2d5cd496963f788e3c009d21a0869129beda734c9d8'
$checksum64  = '278f887c410bd0b2f02e99f77a67d5277b511944bd26108631b8f878bda53711'

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

