$ErrorActionPreference = 'Stop'

$packageName = 'duf'
$url32       = 'https://github.com/muesli/duf/releases/download/v0.6.0/duf_0.6.0_Windows_i386.zip'
$url64       = 'https://github.com/muesli/duf/releases/download/v0.6.0/duf_0.6.0_Windows_x86_64.zip'
$checksum32  = '068453afdb16c87ef6a0356020d7ae36bd593739b5a222ea5276543289d6ca0a'
$checksum64  = '9cf11c16e62d4f37bc7272dc0f113695eb9783e1da3bcd4b162f53cce538b472'

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
