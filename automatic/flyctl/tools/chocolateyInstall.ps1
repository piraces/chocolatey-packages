$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.0.379-pre-1/flyctl_0.0.379-pre-1_Windows_x86_64.zip'
$checksum64  = '71f8ba260123f415099e32297c98bc5773e3c7f7649e0f9e80ec996faf1b75b2'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
