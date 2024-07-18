$ErrorActionPreference = 'Stop'

$packageName = 'dagger'
$url64       = 'https://dl.dagger.io/dagger/releases/0.12.1/dagger_v0.12.1_windows_amd64.zip'
$checksum64  = '50dfc3f25dac462d598a313f95f809aae8ed9ecfc9e31b51937d9c3c845ba6dd'

$packageArgs = @{
  packageName    = $packageName
  url64          = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
