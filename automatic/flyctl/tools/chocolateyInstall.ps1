$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.0.335-pre-1/flyctl_0.0.335-pre-1_Windows_x86_64.zip'
$checksum64  = 'b238d6116625697d4ac6bc2a87881417f3ab97f774fda3e20a5c6c9c5264e5d4'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
