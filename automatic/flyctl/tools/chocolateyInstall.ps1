$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.0.359-pre-1/flyctl_0.0.359-pre-1_Windows_x86_64.zip'
$checksum64  = '4fccce10f13416f1460dbe24e8954135adbb073ba7761a6b5f237dfb796332d5'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
