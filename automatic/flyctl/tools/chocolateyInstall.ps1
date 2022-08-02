$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.0.364-pre-6/flyctl_0.0.364-pre-6_Windows_x86_64.zip'
$checksum64  = '92cec7a16248573c466f0211b67c989c030cbf50867bcf1f28a6abbeba138814'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
