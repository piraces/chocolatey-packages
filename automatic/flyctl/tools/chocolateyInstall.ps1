$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.0.375-pre-1/flyctl_0.0.375-pre-1_Windows_x86_64.zip'
$checksum64  = 'c11416eb38845b41b7a844967ff834d8d2296f03fc16a29244ce10e2946f4e82'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
