$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.0.393-pre-1/flyctl_0.0.393-pre-1_Windows_x86_64.zip'
$checksum64  = '48c2b32cbebb1d328938107cbc85d678bfb08e6ff5d846c279d856dcb384c849'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
