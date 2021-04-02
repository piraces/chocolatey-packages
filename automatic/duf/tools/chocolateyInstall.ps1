$ErrorActionPreference = 'Stop'

$packageName = 'duf'
$url32       = 'https://github.com/muesli/duf/releases/download/v0.6.1/duf_0.6.1_Windows_i386.zip'
$url64       = 'https://github.com/muesli/duf/releases/download/v0.6.1/duf_0.6.1_Windows_x86_64.zip'
$checksum32  = '9888b0d806485d516ae04e1c68adcdfdef9d5b2d530339b97ce9d56b59276766'
$checksum64  = '4a96f247405945ca3c45bb0853fd6af09dc5c0885e9a3116795cece50ef5fe26'

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
