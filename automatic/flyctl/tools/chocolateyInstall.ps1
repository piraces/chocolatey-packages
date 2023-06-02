$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.1.25/flyctl_0.1.25_Windows_x86_64.zip'
$checksum64  = '6ca983c7f1a76a3509a35ae28087c6b275bea47beb2ed8c588ced565e08dc6e7'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
