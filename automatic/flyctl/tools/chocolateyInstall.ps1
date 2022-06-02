$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.0.331/flyctl_0.0.331_Windows_x86_64.zip'
$checksum64  = '6797cf7bcf25378c320f65050507ed4b109a6ef1ac2c1cb2f603cd38e684fe8b'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
