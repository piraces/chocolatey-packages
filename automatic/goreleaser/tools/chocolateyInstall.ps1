$ErrorActionPreference = 'Stop'

$packageName = 'goreleaser'
$url32       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.17.1/goreleaser_Windows_i386.zip'
$url64       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.17.1/goreleaser_Windows_x86_64.zip'
$checksum32  = 'c310e2742f3c256e24869cbb3e83d7d6bc571df829932737a47d40a352f9f83e'
$checksum64  = '53314ce7cc16c3229f2d3b98a932c1618c427964eb2170a1efafbdfa862a556f'

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

