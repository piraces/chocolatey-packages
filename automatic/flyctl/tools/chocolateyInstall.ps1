$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.0.553/flyctl_0.0.553_Windows_x86_64.zip'
$checksum64  = '09b38b939591ea0a8eaa2050d33c0bc115ce6e1782de62149eab3fa5a42fc65c'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
