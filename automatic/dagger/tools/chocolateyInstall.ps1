$ErrorActionPreference = 'Stop'

$packageName = 'dagger'
$url64       = 'https://dl.dagger.io/dagger/releases/0.20.8/dagger_v0.20.8_windows_amd64.zip'
$checksum64  = 'bfb767f0cb8aa1383563974b72eb625bd9f1cf3429a5f1a651ffb3ec2e888e61'

$packageArgs = @{
  packageName    = $packageName
  url64          = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
