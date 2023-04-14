$ErrorActionPreference = 'Stop'

$packageName = 'goreleaser'
$url32       = 'https://github.com/goreleaser/goreleaser/releases/download/v1.17.1/goreleaser_Windows_i386.zip'
$url64       = 'https://github.com/goreleaser/goreleaser/releases/download/v1.17.1/goreleaser_Windows_x86_64.zip'
$checksum32  = 'bf240c48ea553b34fc76f7b079b01d8616d01cab6be0368fa258d81635b517cb'
$checksum64  = '3355700a3ffb3af1c4542a43a727bec85ecf16978f4694a807518b855a80fd9a'

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

