$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.0.350/flyctl_0.0.350_Windows_x86_64.zip'
$checksum64  = '5bfcf15c1bf719e43344b7cc3dfd403347d77200916bdd290ac1fb6a3baaec94'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
