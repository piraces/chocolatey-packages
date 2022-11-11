$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.0.430/flyctl_0.0.430_Windows_x86_64.zip'
$checksum64  = 'b1e2041152838e842b3d7bde926b3c3e6ad90f2a9b73a7a74134e16ca79b1d7d'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
