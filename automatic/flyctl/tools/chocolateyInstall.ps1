$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.0.365-pre-1/flyctl_0.0.365-pre-1_Windows_x86_64.zip'
$checksum64  = '62c15c9198a9e1117d975e7bdb91f13b6d6a2d095d2a5d144d8d0cbc44a7fa64'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
