$ErrorActionPreference = 'Stop'

$packageName = 'grex'
$url32       = 'https://github.com/pemistahl/grex/releases/download/v1.1.0/grex-v1.1.0-x86_64-pc-windows-msvc.zip'
$checksum32  = 'c35b1419af072c9318b02ce0ef70b93f833448c422d50ca609dee7abae07f68d'

$packageArgs = @{
  packageName    = $packageName
  url            = $url32
  checksum       = $checksum32
  checksumType   = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
