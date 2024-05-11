$ErrorActionPreference = 'Stop'

$packageName = 'goreleaser'
$url32       = 'https://github.com/goreleaser/goreleaser/releases/download/v1.26.0/goreleaser_Windows_i386.zip'
$url64       = 'https://github.com/goreleaser/goreleaser/releases/download/v1.26.0/goreleaser_Windows_x86_64.zip'
$checksum32  = 'f056d558bb3ee9d341d172d3a654b4931f86d3b4ccbba2fbbd7fdca07fb96b1a'
$checksum64  = 'e8232a56439aa19154a0e36d72e7827ed668392767a1a2b2f89df7433d0821a9'

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

