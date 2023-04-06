$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.0.508/flyctl_0.0.508_Windows_x86_64.zip'
$checksum64  = 'aa0dd0bee15123f8be7a82835880a3baf12613b3731a99b3888fdd7d2c0eadbc'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
