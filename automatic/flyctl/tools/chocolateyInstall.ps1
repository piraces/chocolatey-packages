$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.0.364-pre-7/flyctl_0.0.364-pre-7_Windows_x86_64.zip'
$checksum64  = '2db02e0b1ca8c87bd9556057f4bef17872e7a4db31d9fc2b1d9d15e411213a8f'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
