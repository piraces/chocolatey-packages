$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.0.364-pre-2/flyctl_0.0.364-pre-2_Windows_x86_64.zip'
$checksum64  = '24ef318fc6de4f0405ea53937d705515004dd85cb6c8921b5f39bd324193c355'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
