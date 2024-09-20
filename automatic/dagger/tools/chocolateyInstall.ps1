$ErrorActionPreference = 'Stop'

$packageName = 'dagger'
$url64       = 'https://dl.dagger.io/dagger/releases/0.13.3/dagger_v0.13.3_windows_amd64.zip'
$checksum64  = 'cb420600b85f27e2384d23c0858d508488d5d157a0bcb537c421c1ae5c79acae'

$packageArgs = @{
  packageName    = $packageName
  url64          = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
