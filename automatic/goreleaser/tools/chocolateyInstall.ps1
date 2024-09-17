$ErrorActionPreference = 'Stop'

$packageName = 'goreleaser'
$url32       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.3.2/goreleaser_Windows_i386.zip'
$url64       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.3.2/goreleaser_Windows_x86_64.zip'
$checksum32  = 'f6bb4b1201e51c0dcb9e31257e20ca9d96b705976d8e22d177556b394fa33a4d'
$checksum64  = '21fd3d167e283fa277d2522f2b6fbf10d6a5288d853a984c759eca6b1c985dc3'

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

