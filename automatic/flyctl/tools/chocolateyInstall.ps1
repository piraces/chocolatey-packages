$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.0.354-pre-1/flyctl_0.0.354-pre-1_Windows_x86_64.zip'
$checksum64  = 'c9a61648ec4ad356edf593509e57bd00793ec948b8afcba19b82e20717c4b95e'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
