$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.0.364-pre-8/flyctl_0.0.364-pre-8_Windows_x86_64.zip'
$checksum64  = 'dea339bcc3ff44b80e1a3ecee001e0eafcc1cad4275b7dd9f1e001f34bd93fdc'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
