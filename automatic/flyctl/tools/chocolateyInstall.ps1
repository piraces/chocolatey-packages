$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.1.5/flyctl_0.1.5_Windows_x86_64.zip'
$checksum64  = '95c3ecc3287296d43e48ccef9d53ece3b50a2233408f0336b3cf824ea4c5f3c8'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
