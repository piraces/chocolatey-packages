$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.0.449/flyctl_0.0.449_Windows_x86_64.zip'
$checksum64  = 'b227f4a5b041e070969e6406c9f84041431f2fcad25cbbf814e6c367ac3cb6d3'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
