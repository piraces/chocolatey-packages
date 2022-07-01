$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.0.347-pre-2/flyctl_0.0.347-pre-2_Windows_x86_64.zip'
$checksum64  = '22c63ec0f4de2e49aac54e1b9b73981d35376fa658976a135747a43ff87b0a88'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
