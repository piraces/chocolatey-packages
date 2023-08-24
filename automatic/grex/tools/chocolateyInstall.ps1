$ErrorActionPreference = 'Stop'

$packageName = 'grex'
$url32       = 'https://github.com/pemistahl/grex/releases/download/v1.4.4/grex-v1.4.4-x86_64-pc-windows-msvc.zip'
$checksum32  = '4762d703b58e758aa717bec78a5ab1f7faa7b186d0dadfa4014688b5a288514d'

$packageArgs = @{
  packageName    = $packageName
  url            = $url32
  checksum       = $checksum32
  checksumType   = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
