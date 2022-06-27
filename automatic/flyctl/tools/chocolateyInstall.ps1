$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.0.340/flyctl_0.0.340_Windows_x86_64.zip'
$checksum64  = '6dca5b994e0a8f1c44c681d38c691eb740ac4c2ad6e5563ad526b01aad7b72a6'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
