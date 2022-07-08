$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.0.351-pre-1/flyctl_0.0.351-pre-1_Windows_x86_64.zip'
$checksum64  = '258ae49c0ac139e32c8c8832490fd03f253cc87f5ff70675da8cfe44eb2a0a99'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
