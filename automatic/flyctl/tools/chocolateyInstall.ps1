$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.0.417/flyctl_0.0.417_Windows_x86_64.zip'
$checksum64  = 'f8707c728e9ba217ed3f2ea0d33154dde82d6fdbec98e41acc691c5cea38ffe9'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
