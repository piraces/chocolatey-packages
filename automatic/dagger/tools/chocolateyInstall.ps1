$ErrorActionPreference = 'Stop'

$packageName = 'dagger'
$url64       = 'https://dl.dagger.io/dagger/releases/0.11.2/dagger_v0.11.2_windows_amd64.zip'
$checksum64  = 'f16bb092b8df1f591915cdd54ff02c363300cc449f240ab095b203cd3e3bd5b4'

$packageArgs = @{
  packageName    = $packageName
  url64          = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
