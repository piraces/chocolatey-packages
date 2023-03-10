$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.0.483/flyctl_0.0.483_Windows_x86_64.zip'
$checksum64  = 'b92ccd49aa2dcd6da97abfff5c5bd19f40cf2ecdd5240798bbe6bc76f6dda2f6'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
