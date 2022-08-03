$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.0.364/flyctl_0.0.364_Windows_x86_64.zip'
$checksum64  = '1ee06c2d64a733108db7da972e837d2fac6592e6e6aaf6e8d6f7c649ebc8463f'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
