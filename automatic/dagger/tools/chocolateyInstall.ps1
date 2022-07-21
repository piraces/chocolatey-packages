$ErrorActionPreference = 'Stop'

$packageName = 'dagger'
$url64       = 'https://github.com/dagger/dagger/releases/download/v0.2.25/dagger_v0.2.25_windows_amd64.zip'
$checksum64  = 'fc7a87b495e54dbf5dd290f55087641f72fc760f1bb8c9bf2ea044bbf83d81f1'

$packageArgs = @{
  packageName    = $packageName
  url64          = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
