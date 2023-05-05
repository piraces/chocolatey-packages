$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.0.555/flyctl_0.0.555_Windows_x86_64.zip'
$checksum64  = '3b8bdb1fe35a2691a948276a4f3c07191b8d21b30e5dfa53b05d13669dec8ad3'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
