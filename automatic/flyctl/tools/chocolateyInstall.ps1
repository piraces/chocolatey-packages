$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.0.361-pre-1/flyctl_0.0.361-pre-1_Windows_x86_64.zip'
$checksum64  = 'faf8fe78957fd5b4f0258d02742aede2a690509b0b6b5b99b432fdbb43ce245f'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
