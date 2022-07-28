$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.0.363-pre-1/flyctl_0.0.363-pre-1_Windows_x86_64.zip'
$checksum64  = 'e265ef3da1b75e5e9b15fa23ac0698134371803a0378e6f739b6d4246354456a'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
