$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.0.366/flyctl_0.0.366_Windows_x86_64.zip'
$checksum64  = '6f8a9ce18638929ebe4f5e96fc4ebfcd74a6cae04e55650d8dbb15b46bd39239'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
