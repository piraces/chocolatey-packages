$ErrorActionPreference = 'Stop'

$packageName = 'grex'
$url32       = 'https://github.com/pemistahl/grex/releases/download/v1.4.0/grex-v1.4.0-x86_64-pc-windows-msvc.zip'
$checksum32  = '43431c3a4f06f1bd12882b092ca13b7f70f10ffd7c54f1d7c39c382a2b697eed'

$packageArgs = @{
  packageName    = $packageName
  url            = $url32
  checksum       = $checksum32
  checksumType   = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
