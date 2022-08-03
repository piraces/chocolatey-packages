$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.0.365/flyctl_0.0.365_Windows_x86_64.zip'
$checksum64  = 'dbad610ab1628e7beac1eddcbfc8d90e3b0f7bfce531fcfd41b9fbc1cf404c5a'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
