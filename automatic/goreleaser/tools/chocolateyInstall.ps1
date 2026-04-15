$ErrorActionPreference = 'Stop'

$packageName = 'goreleaser'
$url32       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.15.3/goreleaser_Windows_i386.zip'
$url64       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.15.3/goreleaser_Windows_x86_64.zip'
$checksum32  = '5586b0dbd292879d26f9fbd65056e47dc703a045e5addaea474e7c9788886180'
$checksum64  = '8722fdebfc23e10a36356ddd59af0c1f52c4120ca847afd091bd34e09d8aae8c'

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

