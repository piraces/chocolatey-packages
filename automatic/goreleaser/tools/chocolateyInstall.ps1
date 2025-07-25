$ErrorActionPreference = 'Stop'

$packageName = 'goreleaser'
$url32       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.11.1/goreleaser_Windows_i386.zip'
$url64       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.11.1/goreleaser_Windows_x86_64.zip'
$checksum32  = '24afd50a9449c985bcc2502b428a08eca72c1a2efaa2bc0d3d0b7fe409739b08'
$checksum64  = '7ef5ee78a55bfc24107b5e8815ef83d6784cb548ff6a558d6d05d077a2e7ff1e'

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

