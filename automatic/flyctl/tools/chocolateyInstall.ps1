$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.0.367/flyctl_0.0.367_Windows_x86_64.zip'
$checksum64  = 'f96ca3ffb8c8476a0a389d67c78cc0a85e5760def4d3ff7ab6be4ccad5e56f1e'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
