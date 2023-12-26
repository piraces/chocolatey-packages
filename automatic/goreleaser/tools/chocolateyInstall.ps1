$ErrorActionPreference = 'Stop'

$packageName = 'goreleaser'
$url32       = 'https://github.com/goreleaser/goreleaser/releases/download/v1.23.0/goreleaser_Windows_i386.zip'
$url64       = 'https://github.com/goreleaser/goreleaser/releases/download/v1.23.0/goreleaser_Windows_x86_64.zip'
$checksum32  = 'ab38bc5604074e5216e92eca5d2c323faf10f04cf5161adc1b5a1c8e4382b256'
$checksum64  = '52d24ad9827c77a13bd2becaccd8de10da910310133030de41a3a1896352c23c'

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

