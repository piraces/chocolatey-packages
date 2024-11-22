$ErrorActionPreference = 'Stop'

$packageName = 'goreleaser'
$url32       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.4.8/goreleaser_Windows_i386.zip'
$url64       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.4.8/goreleaser_Windows_x86_64.zip'
$checksum32  = '6f0cc26baa0f19286829f656059e4062ed605adec2a5497f530a9781ad629fe2'
$checksum64  = 'd741624e79adfd927a9d8b1d5137fa0e930826af3e01d9aa6de40983428f4e20'

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

