$ErrorActionPreference = 'Stop'

$packageName = 'grex'
$url32       = 'https://github.com/pemistahl/grex/releases/download/v1.4.6/grex-v1.4.6-x86_64-pc-windows-msvc.zip'
$checksum32  = '7691dbb8e46339a15d8362b79b2456f508266cf00a55fe685ed69a6259577485'

$packageArgs = @{
  packageName    = $packageName
  url            = $url32
  checksum       = $checksum32
  checksumType   = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
