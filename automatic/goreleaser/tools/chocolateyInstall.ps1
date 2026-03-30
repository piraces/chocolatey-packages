$ErrorActionPreference = 'Stop'

$packageName = 'goreleaser'
$url32       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.15.0/goreleaser_Windows_i386.zip'
$url64       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.15.0/goreleaser_Windows_x86_64.zip'
$checksum32  = 'd50c90915844e01df37b3008f1525f73decc1fd144e51efaca6a1f3931123b24'
$checksum64  = '221c7dc162e88442b428e793db6d8b29859d58b8136d3877b06ad94420f37750'

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

