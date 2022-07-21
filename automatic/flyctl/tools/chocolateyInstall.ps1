$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.0.358-pre-1/flyctl_0.0.358-pre-1_Windows_x86_64.zip'
$checksum64  = '1edda03522b13788bd5383c02bb2c812b6648e3af120bb8974f3cc23eb789aff'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
