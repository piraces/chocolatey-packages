$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.1.56/flyctl_0.1.56_Windows_x86_64.zip'
$checksum64  = '63d8a7f5dec4e1c83503a65dfe3b284c8ecf4a61e62acedb7c668586ec1d7bd0'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
