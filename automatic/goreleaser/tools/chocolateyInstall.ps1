$ErrorActionPreference = 'Stop'

$packageName = 'goreleaser'
$url32       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.14.3/goreleaser_Windows_i386.zip'
$url64       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.14.3/goreleaser_Windows_x86_64.zip'
$checksum32  = 'f1a99dee765a9051027eb3db1d87830e0af7a17c59e8dd1a4f2c95a8efb96d2b'
$checksum64  = '3deea8ff471aa258a2d99f3e5302971d7028647ae8ddaf103257a8113e485a31'

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

