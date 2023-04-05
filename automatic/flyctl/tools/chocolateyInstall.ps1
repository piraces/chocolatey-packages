$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.0.507/flyctl_0.0.507_Windows_x86_64.zip'
$checksum64  = '5dac76c3395b850fec79e360a735e5f5b9f301aff4240d4bbbbbaf3cc245ee00'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
