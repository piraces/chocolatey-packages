$ErrorActionPreference = 'Stop'

$packageName = 'goreleaser'
$url32       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.12.5/goreleaser_Windows_i386.zip'
$url64       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.12.5/goreleaser_Windows_x86_64.zip'
$checksum32  = '417a4c00f7101ed2271b708e17a54aa723eda5b7ee6af8e2b665305bb1263d3b'
$checksum64  = '1c058cb462ccbf1d07cbab556867009912f5d6b6f98ddc208bba80766b734df4'

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

