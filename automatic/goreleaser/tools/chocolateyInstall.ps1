$ErrorActionPreference = 'Stop'

$packageName = 'goreleaser'
$url32       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.10.0/goreleaser_Windows_i386.zip'
$url64       = 'https://github.com/goreleaser/goreleaser/releases/download/v2.10.0/goreleaser_Windows_x86_64.zip'
$checksum32  = '92d2f0f302114b8630b0ea230b3884141f428dbe155a5e9fda381085dd25f351'
$checksum64  = '8074e9d0a1a26456e0c25d33e2967cb8600adcb0766f47c3d2e3b180fe665fbc'

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

