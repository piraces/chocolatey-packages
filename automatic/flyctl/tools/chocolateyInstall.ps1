$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.0.334-pre-1/flyctl_0.0.334-pre-1_Windows_x86_64.zip'
$checksum64  = 'd391968116397325d40469cadbb7d8411075148d01983fc9587a454b19ac62b4'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
