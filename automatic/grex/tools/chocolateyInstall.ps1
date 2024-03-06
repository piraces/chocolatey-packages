$ErrorActionPreference = 'Stop'

$packageName = 'grex'
$url32       = 'https://github.com/pemistahl/grex/releases/download/v1.4.5/grex-v1.4.5-x86_64-pc-windows-msvc.zip'
$checksum32  = 'ffd6e41a78cf97fd5442b16a504102c229ce78e8a07b0fb89ba1e39ac3ff469e'

$packageArgs = @{
  packageName    = $packageName
  url            = $url32
  checksum       = $checksum32
  checksumType   = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
