$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.1.51/flyctl_0.1.51_Windows_x86_64.zip'
$checksum64  = '6f98011d092ccd0c8c95d8d794def1f7dc1463772bd49e62a36e8ea5e7a7c5fb'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
