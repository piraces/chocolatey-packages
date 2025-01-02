$ErrorActionPreference = 'Stop'

$packageName = 'goreleaser'
$url32       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.5.1/goreleaser_Windows_i386.zip'
$url64       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.5.1/goreleaser_Windows_x86_64.zip'
$checksum32  = '89ff70ecdcf7be83d1d59ab3b80698907ffe1beda674898ebeb0734f8cb5e3a4'
$checksum64  = '0593211ce02c83be42b809b7e6f3051ee066505fe1c998d982626e2d886f58da'

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

