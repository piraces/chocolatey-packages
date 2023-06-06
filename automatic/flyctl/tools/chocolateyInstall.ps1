$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.1.27/flyctl_0.1.27_Windows_x86_64.zip'
$checksum64  = '4e101d6a5bc6b8a064c8c8fa1ac3db6eadf054f52ceea68fe320a1eb4de87dba'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
