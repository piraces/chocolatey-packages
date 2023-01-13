$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.0.450/flyctl_0.0.450_Windows_x86_64.zip'
$checksum64  = '73d9b2743439ec6223a2c4c8d8bc10487b70cfbf76ad6a1900eacd3dc2126453'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
