$ErrorActionPreference = 'Stop'

$packageName = 'duf'
$url32       = 'https://github.com/muesli/duf/releases/download/v0.6.2/duf_0.6.2_Windows_i386.zip'
$url64       = 'https://github.com/muesli/duf/releases/download/v0.6.2/duf_0.6.2_Windows_x86_64.zip'
$checksum32  = 'e4d4135f2d67b37b0dc63cb457f69036672307148f864d2d4c86ff881d2ea133'
$checksum64  = '16ef7c5ae344f7fe747b0e5bd1fe4f7a9a7a6475bd0672e3ddce402469ed79b2'

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
