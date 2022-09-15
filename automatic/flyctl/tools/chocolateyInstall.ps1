$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.0.391-pre-1/flyctl_0.0.391-pre-1_Windows_x86_64.zip'
$checksum64  = 'd565a33b0adaa91c4e89c706b4d884e96b8669677835deafe0a28c0f0578a821'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
