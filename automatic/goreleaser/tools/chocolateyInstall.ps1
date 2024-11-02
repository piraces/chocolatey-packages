$ErrorActionPreference = 'Stop'

$packageName = 'goreleaser'
$url32       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.4.1/goreleaser_Windows_i386.zip'
$url64       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.4.1/goreleaser_Windows_x86_64.zip'
$checksum32  = '5cfb288c7dccbea932381298d2e4edd691c3d6a0330cd5cc106c2ff53a5fcab9'
$checksum64  = 'b700902dfa1f291a3dd734d002ef7c622419e002f6fde0325fecf2c2b7e77c03'

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

