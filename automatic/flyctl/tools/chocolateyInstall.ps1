$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.0.459/flyctl_0.0.459_Windows_x86_64.zip'
$checksum64  = '175877e4165dd5fc0d31e5ed1e8cecf8667e2787f84e8982efa50f7fc9aa63ab'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
