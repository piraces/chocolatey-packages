$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.1.57/flyctl_0.1.57_Windows_x86_64.zip'
$checksum64  = '702dd5ff713332eb551e496c9a1f42907a08d88fbbf0a4e30b8d7581dbedd56d'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
