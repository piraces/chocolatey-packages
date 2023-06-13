$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.1.35/flyctl_0.1.35_Windows_x86_64.zip'
$checksum64  = '5c9cd5c799a5de8b6bd69b301b025f317e912d78a283e4fe53f0e75b0fd3b7ad'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
