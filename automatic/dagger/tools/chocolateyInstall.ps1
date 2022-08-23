$ErrorActionPreference = 'Stop'

$packageName = 'dagger'
$url64       = 'https://github.com/dagger/dagger/releases/download/v0.2.31/dagger_v0.2.31_windows_amd64.zip'
$checksum64  = 'b4dda8a6cee78ba2b4c912bf823c763e18cca119ad8529dcee4411ba1c5b9753'

$packageArgs = @{
  packageName    = $packageName
  url64          = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
