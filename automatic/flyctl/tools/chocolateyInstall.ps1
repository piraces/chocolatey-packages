$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.0.479/flyctl_0.0.479_Windows_x86_64.zip'
$checksum64  = 'e73b13f618e2a63e942ce5c0632fdd4a5da607eaf8e0e2678e08cae445f4b6e9'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
