$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.0.554/flyctl_0.0.554_Windows_x86_64.zip'
$checksum64  = '582e8eea8ba46f206ec13aa203f43bdff1aaa285621af44cb7c7f0fb4afdccea'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
