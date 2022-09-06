$ErrorActionPreference = 'Stop'

$packageName = 'dagger'
$url64       = 'https://github.com/dagger/dagger/releases/download/v0.2.33/dagger_v0.2.33_windows_amd64.zip'
$checksum64  = '0e511cf195ceaeba67cf6b6f53a06e6dd37341df5eb315d8ea5fdb44f2db1f9f'

$packageArgs = @{
  packageName    = $packageName
  url64          = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
