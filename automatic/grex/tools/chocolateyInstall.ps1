$ErrorActionPreference = 'Stop'

$packageName = 'grex'
$url32       = 'https://github.com/pemistahl/grex/releases/download/v1.4.2/grex-v1.4.2-x86_64-pc-windows-msvc.zip'
$checksum32  = '2825eb04deb5730242838830dfa321b4240f7bbec84a1cea73508d615f16c346'

$packageArgs = @{
  packageName    = $packageName
  url            = $url32
  checksum       = $checksum32
  checksumType   = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
