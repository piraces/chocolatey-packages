$ErrorActionPreference = 'Stop'

$packageName = 'goreleaser'
$url32       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.10.2/goreleaser_Windows_i386.zip'
$url64       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.10.2/goreleaser_Windows_x86_64.zip'
$checksum32  = '8e4b68aee37bf7c88a7dcbd2bcbdbb2e3fc200f7e18ba1060157d13ed2d95f1d'
$checksum64  = 'f36077748b3e4cd466d407685cee9c105890203ad7e4efe9d89c99ebeb8f8eea'

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

