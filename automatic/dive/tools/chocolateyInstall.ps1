$ErrorActionPreference = 'Stop'

$packageName = 'dive'
$url64       = 'https://github.com/wagoodman/dive/releases/download/v0.9.2/dive_0.9.2_windows_amd64.zip'
$checksum64  = '4e8e48263077f94fccfb1f1c385a95640ef3c7a48fd8ca41cc7e5889ba82da28'
$checksumType64 = 'sha256'

$packageArgs = @{
  packageName      = $packageName
  url64bit         = $url64
  checksum64       = $checksum64
  checksumType64   = $checksumType64
  unzipLocation    = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
