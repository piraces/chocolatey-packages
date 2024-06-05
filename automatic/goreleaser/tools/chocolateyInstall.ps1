$ErrorActionPreference = 'Stop'

$packageName = 'goreleaser'
$url32       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.0.0/goreleaser_Windows_i386.zip'
$url64       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.0.0/goreleaser_Windows_x86_64.zip'
$checksum32  = 'ed80e431184331a8c4042d2bcc13c218b33b43a53bd6d025c5866b7cd7cb149a'
$checksum64  = '62fd801788693264da70d4601bf28efdcc6cc4fbd024ff5be876c5ef05680ca5'

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

