$ErrorActionPreference = 'Stop'

$packageName = 'grex'
$url32       = 'https://github.com/pemistahl/grex/releases/download/v1.3.0/grex-v1.3.0-x86_64-pc-windows-msvc.zip'
$checksum32  = 'e4399720cd8078a4c405b22220115f5aa6f549283d74e4a90448eacb73d9b648'

$packageArgs = @{
  packageName    = $packageName
  url            = $url32
  checksum       = $checksum32
  checksumType   = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
