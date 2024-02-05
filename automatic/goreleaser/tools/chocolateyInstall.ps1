$ErrorActionPreference = 'Stop'

$packageName = 'goreleaser'
$url32       = 'https://github.com/goreleaser/goreleaser/releases/download/v1.24.0/goreleaser_Windows_i386.zip'
$url64       = 'https://github.com/goreleaser/goreleaser/releases/download/v1.24.0/goreleaser_Windows_x86_64.zip'
$checksum32  = '2b1ec83c32b8d76f9aae94d8813956de3dc243284e5e6b1406f1adf6684d3469'
$checksum64  = '251bf38fc28e56736be12192987c7925aa084998696dba19e1eba5570bcc8eb8'

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

