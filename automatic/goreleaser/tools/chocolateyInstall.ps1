$ErrorActionPreference = 'Stop'

$packageName = 'goreleaser'
$url32       = 'https://github.com/goreleaser/goreleaser/releases/download/v1.17.2/goreleaser_Windows_i386.zip'
$url64       = 'https://github.com/goreleaser/goreleaser/releases/download/v1.17.2/goreleaser_Windows_x86_64.zip'
$checksum32  = 'b6b840994b5e0e68fa36feb09ae321c6c5fe860119c65cbe3e3ec9e5975c4854'
$checksum64  = '4e076015531baa48a818b4c4968fabc4c1616cb7df19308457f3769dd7189bfc'

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

