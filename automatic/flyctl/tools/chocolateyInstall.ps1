$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.0.464/flyctl_0.0.464_Windows_x86_64.zip'
$checksum64  = '9d9eb8eefd12a900aca1c56910b8cf592e5770654a1d7a953eb78d026d1d57c3'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
