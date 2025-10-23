$ErrorActionPreference = 'Stop'

$packageName = 'dagger'
$url64       = 'https://dl.dagger.io/dagger/releases/0.19.3/dagger_v0.19.3_windows_amd64.zip'
$checksum64  = 'ec1bfef65d087100f5f26c696a2f9b0f1130fed89e31f4adf35fef78c8322c8b'

$packageArgs = @{
  packageName    = $packageName
  url64          = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
