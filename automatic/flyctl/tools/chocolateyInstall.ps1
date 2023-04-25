$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.0.541/flyctl_0.0.541_Windows_x86_64.zip'
$checksum64  = 'd6a3abe1b60680be7da8723cd0e1cbc4205ee2b3bd83c04b2312f5a9d531a0ec'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
