$ErrorActionPreference = 'Stop'

$packageName = 'goreleaser'
$url32       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.1.0/goreleaser_Windows_i386.zip'
$url64       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.1.0/goreleaser_Windows_x86_64.zip'
$checksum32  = '42c99fdf69fcd3b6d57d8198a08eab00ea8566b89960125f263b1fb635dcd834'
$checksum64  = 'fe4481b875f7a095ee16f15cdd7c4547e210e1298d1220fe55cf684a0debb089'

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

