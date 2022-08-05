$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.0.367-pre-1/flyctl_0.0.367-pre-1_Windows_x86_64.zip'
$checksum64  = '63bd510f563d3b771fbd8e3d37bd70e2578cf1a5a796e72c395081874a57e266'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
