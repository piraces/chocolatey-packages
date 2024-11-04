$ErrorActionPreference = 'Stop'

$packageName = 'goreleaser'
$url32       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.4.3/goreleaser_Windows_i386.zip'
$url64       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.4.3/goreleaser_Windows_x86_64.zip'
$checksum32  = '3981fb76494e736143866bd0f4b60986e9c97c0413ff504f0cdd3883ebb83310'
$checksum64  = '9018f25bae6a7a53c099f683c91ccb07d475133ea1cea606e1f1f0fb9862bb87'

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

