$ErrorActionPreference = 'Stop'

$packageName = 'goreleaser'
$url32       = 'https://github.com/goreleaser/goreleaser/releases/download/v1.15.2/goreleaser_Windows_i386.zip'
$url64       = 'https://github.com/goreleaser/goreleaser/releases/download/v1.15.2/goreleaser_Windows_x86_64.zip'
$checksum32  = '6db786ce108ea5fde9869a5802f5daf612e69149ef1f77aea667279360c50887'
$checksum64  = 'dbafa9664d7395e3c23235c250511e9614448f7eb5c2165479706551a569b05b'

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

