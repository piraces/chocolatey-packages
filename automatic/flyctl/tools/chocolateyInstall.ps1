$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.0.411/flyctl_0.0.411_Windows_x86_64.zip'
$checksum64  = '4640d12c375cf5fc4ce146ff0a4f4acd1f11ea4efbb468a3fb6afcbf6543f2a5'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
