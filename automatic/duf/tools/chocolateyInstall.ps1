$ErrorActionPreference = 'Stop'

$packageName = 'duf'
$url32       = 'https://github.com/muesli/duf/releases/download/v0.8.0/duf_0.8.0_Windows_i386.zip'
$url64       = 'https://github.com/muesli/duf/releases/download/v0.8.0/duf_0.8.0_Windows_x86_64.zip'
$checksum32  = '856a05a232ba1510231a386f3131a36686084fdc12bb66b9d955c05bcd8779e0'
$checksum64  = '883a9012b24cf21db5a27e76ba5ba179263d469d8b4e9e018447790a9fd0a4ff'

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
