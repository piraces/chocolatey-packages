$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.1.3/flyctl_0.1.3_Windows_x86_64.zip'
$checksum64  = 'c3d26c7daf50d80b5c947d32c4d71d2cd85b67e4abbd39cc65cfe325076f676c'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
