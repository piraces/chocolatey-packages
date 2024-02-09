$ErrorActionPreference = 'Stop'

$packageName = 'dagger'
$url64       = 'https://dl.dagger.io/dagger/releases/0.9.9/dagger_v0.9.9_windows_amd64.zip'
$checksum64  = 'f6a405eac134626861383c02c9c108880c6547bde8b35f47b175c1a9adcc2b0a'

$packageArgs = @{
  packageName    = $packageName
  url64          = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
