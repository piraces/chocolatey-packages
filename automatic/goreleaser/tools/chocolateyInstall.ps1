$ErrorActionPreference = 'Stop'

$packageName = 'goreleaser'
$url32       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.14.1/goreleaser_Windows_i386.zip'
$url64       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.14.1/goreleaser_Windows_x86_64.zip'
$checksum32  = 'e33377e8b06c51c0a9e6adb01192a73a10ce4dc428ca46e3727d23d86916fb39'
$checksum64  = 'd7a3d8ba795e97ab8c4f8003630d300da164adf21fde5a4049440c20f15c3137'

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

