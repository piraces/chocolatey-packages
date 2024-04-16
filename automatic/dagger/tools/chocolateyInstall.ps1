$ErrorActionPreference = 'Stop'

$packageName = 'dagger'
$url64       = 'https://dl.dagger.io/dagger/releases/0.11.1/dagger_v0.11.1_windows_amd64.zip'
$checksum64  = '52a97d4246346393b8c54496b13778e9630cb020f7f7dc31a2ca1e2ec61b1417'

$packageArgs = @{
  packageName    = $packageName
  url64          = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
