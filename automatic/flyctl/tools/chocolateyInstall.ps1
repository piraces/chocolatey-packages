$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.1.40/flyctl_0.1.40_Windows_x86_64.zip'
$checksum64  = 'ef6a7b9effa7d1a2cf1cd586395a97a0f762dc8a32663a92bf7fd5ceeeafbfe6'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
