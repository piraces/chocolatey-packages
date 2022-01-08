$ErrorActionPreference = 'Stop'

$packageName = 'duf'
$url32       = 'https://github.com/muesli/duf/releases/download/v0.7.0/duf_0.7.0_Windows_i386.zip'
$url64       = 'https://github.com/muesli/duf/releases/download/v0.7.0/duf_0.7.0_Windows_x86_64.zip'
$checksum32  = 'c65cadd805465b2a98c95b9b8d17a1d169cd357ec8184838b58c12387e55bfcf'
$checksum64  = '879785d63dc611ec224ee3922c6cbbeebd0659ccd3fc9c9396d65eea47555cc4'

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
