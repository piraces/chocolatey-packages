$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.0.484/flyctl_0.0.484_Windows_x86_64.zip'
$checksum64  = 'be40db7d99df15864a7458d0ad7f073a28a2822e1bc6f4ffdb4d0c32c889bd8c'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
