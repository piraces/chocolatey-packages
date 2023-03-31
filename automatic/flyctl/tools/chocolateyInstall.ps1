$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.0.503/flyctl_0.0.503_Windows_x86_64.zip'
$checksum64  = '4efb7595e22b0ffb7b0838ac6e6700a7dd41137ed99a11c47dad3ee2f0c416b0'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
