$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.1.52/flyctl_0.1.52_Windows_x86_64.zip'
$checksum64  = '0ad690489c4bcec77cef9bcf2ab9246f6271c4ed8e0b462221d5671feaa7e325'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
