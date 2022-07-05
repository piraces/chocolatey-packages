$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.0.348-pre-1/flyctl_0.0.348-pre-1_Windows_x86_64.zip'
$checksum64  = '828ea94bd51148dff52416e26181577210d4d0654b3433f172f2db7055bd0b2f'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
