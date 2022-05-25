$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.0.328/flyctl_0.0.328_Windows_x86_64.zip'
$checksum64  = 'abc2f665f345c1f258d7cd8d7febdc1dfc2538baf8dbbc3030ee01179f5d74c1'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
