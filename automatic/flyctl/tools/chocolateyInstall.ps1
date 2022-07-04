$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.0.347/flyctl_0.0.347_Windows_x86_64.zip'
$checksum64  = 'b87317ebd28d7103d66c94d775dc1cc1100af7d58ac60ab99cc07e7b9bb36316'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
