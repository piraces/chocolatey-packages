$ErrorActionPreference = 'Stop'

$packageName = 'goreleaser'
$url32       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.20.3/goreleaser_Windows_i386.zip'
$url64       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.20.3/goreleaser_Windows_x86_64.zip'
$checksum32  = '43d98e7dfdc4ca572f0264167ad4e2304d834d3869c7b48e1d7897f11fd4d499'
$checksum64  = 'ef69177888fd7f4048a101f3cca8cc62a56b05b246201798fca5214304ba693d'

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

