$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.0.358/flyctl_0.0.358_Windows_x86_64.zip'
$checksum64  = 'ab1c859260fc7b261c5693f1892b4956d113e37444eca7d7a4bfd1f66bb599ef'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
