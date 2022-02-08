$ErrorActionPreference = 'Stop'

$packageName = 'duf'
$url32       = 'https://github.com/muesli/duf/releases/download/v0.8.1/duf_0.8.1_Windows_i386.zip'
$url64       = 'https://github.com/muesli/duf/releases/download/v0.8.1/duf_0.8.1_Windows_x86_64.zip'
$checksum32  = '1d8829b7f93dfe532bf29015b8826d6d384d6f25c751e9118a12b9ff63ae881a'
$checksum64  = '61cb50b541b30b6b66f20453d8795e6395454224e1609fa8454682fcf8931926'

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
