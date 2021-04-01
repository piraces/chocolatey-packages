$ErrorActionPreference = 'Stop'

$packageName = 'grex'
$url32       = 'https://github.com/pemistahl/grex/releases/download/v1.2.0/grex-v1.2.0-x86_64-pc-windows-msvc.zip'
$checksum32  = 'da9c50a4e19cbf7b1c4a001a9252c1a097b8eebbb9ec0bbf3f88bc79030e7d73'

$packageArgs = @{
  packageName    = $packageName
  url            = $url32
  checksum       = $checksum32
  checksumType   = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
