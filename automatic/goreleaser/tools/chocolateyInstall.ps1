$ErrorActionPreference = 'Stop'

$packageName = 'goreleaser'
$url32       = 'https://github.com/goreleaser/goreleaser/releases/download/v1.22.1/goreleaser_Windows_i386.zip'
$url64       = 'https://github.com/goreleaser/goreleaser/releases/download/v1.22.1/goreleaser_Windows_x86_64.zip'
$checksum32  = 'd9b1fd9afd5a94160c7da7c639e987f9f4d694c391d806582078bec9c2115303'
$checksum64  = '81bbceb79b788c70fe0c8b57b15f894a6612340df5b50a1dcb73d8e1acf3af8b'

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

