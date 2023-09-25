$ErrorActionPreference = 'Stop'

$packageName = 'goreleaser'
$url32       = 'https://github.com/goreleaser/goreleaser/releases/download/v1.21.1/goreleaser_Windows_i386.zip'
$url64       = 'https://github.com/goreleaser/goreleaser/releases/download/v1.21.1/goreleaser_Windows_x86_64.zip'
$checksum32  = 'aa22686386ab26ae71da302250c3de12205070557ae7eb22ccb20fcafbea0b4a'
$checksum64  = '3bdf05861d7ad92675444fd8f15c80cdf82722c315d6f1a017d29452e4ecbcf5'

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

