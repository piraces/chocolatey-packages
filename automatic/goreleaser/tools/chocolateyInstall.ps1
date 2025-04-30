$ErrorActionPreference = 'Stop'

$packageName = 'goreleaser'
$url32       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.9.0/goreleaser_Windows_i386.zip'
$url64       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.9.0/goreleaser_Windows_x86_64.zip'
$checksum32  = '89acb7dc1eae64d77e3235579cfb7baf3da9983fc19f5f67400df64f61de2e2f'
$checksum64  = 'f56e85f8fd52875102dfc2b01dc07fc174486caebbac7e3aa9f29b4f0057d495'

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

