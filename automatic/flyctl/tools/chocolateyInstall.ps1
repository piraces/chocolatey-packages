$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.0.347-pre-1/flyctl_0.0.347-pre-1_Windows_x86_64.zip'
$checksum64  = '00c412bb4d1d536a19da0aee5fac09e4d068c7bdbd182bd2b61ad44d74d22a8e'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
