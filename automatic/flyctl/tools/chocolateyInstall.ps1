$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.0.478/flyctl_0.0.478_Windows_x86_64.zip'
$checksum64  = '1d0a94f5fe36b00e2b5be19eae23fadcca170e21befa0dc1f58844a49ad37e17'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
