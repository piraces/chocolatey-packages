$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.0.349-pre-1/flyctl_0.0.349-pre-1_Windows_x86_64.zip'
$checksum64  = '2994692e8eafca905280e955cd4b2920d7ba6ab51159cf88d51352a944d4d679'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
