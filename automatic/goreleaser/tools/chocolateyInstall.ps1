$ErrorActionPreference = 'Stop'

$packageName = 'goreleaser'
$url32       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.18.3/goreleaser_Windows_i386.zip'
$url64       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.18.3/goreleaser_Windows_x86_64.zip'
$checksum32  = '2ec7663916150fe8b4775fa2fb0911c7e3fd0de80c8c28f0efa6abbbbb2a3ba2'
$checksum64  = '5e7455df2accbfe69416cf9ccbc6aefe9abd2543525d5d6da24426d827aa8171'

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

