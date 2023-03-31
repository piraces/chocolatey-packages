$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.0.501/flyctl_0.0.501_Windows_x86_64.zip'
$checksum64  = 'f766d2199e17dfa3c53556addeaaab1e9890721e615c2d7f4e0c530a1cfc40ba'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
