$ErrorActionPreference = 'Stop'

$packageName = 'grex'
$url32       = 'https://github.com/pemistahl/grex/releases/download/v1.4.1/grex-v1.4.1-x86_64-pc-windows-msvc.zip'
$checksum32  = '99c28787c5ccaa68a7e761748487ef0b436641d99e4c9bef53a693f783f77616'

$packageArgs = @{
  packageName    = $packageName
  url            = $url32
  checksum       = $checksum32
  checksumType   = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
