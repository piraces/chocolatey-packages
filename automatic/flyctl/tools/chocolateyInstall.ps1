$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.0.425/flyctl_0.0.425_Windows_x86_64.zip'
$checksum64  = '3ab1ea037a2e42f7d83e741523677de4dd77f193e4b4e7dc7258de4d2de973c8'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
