$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.0.471/flyctl_0.0.471_Windows_x86_64.zip'
$checksum64  = '691cff1e008f7b9a0c9ff42b8abdd1c1cb1db6999e4f050d55935266156ea9fb'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
