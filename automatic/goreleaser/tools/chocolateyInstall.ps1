$ErrorActionPreference = 'Stop'

$packageName = 'goreleaser'
$url32       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.5.0/goreleaser_Windows_i386.zip'
$url64       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.5.0/goreleaser_Windows_x86_64.zip'
$checksum32  = '9558872f91161e3cb560bf146030535f556945af1c61068840bd3b957b94cfed'
$checksum64  = 'ab77d444effb50eb2878c060a840bfa269101639dae450b8417cab5fe0fdcada'

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

