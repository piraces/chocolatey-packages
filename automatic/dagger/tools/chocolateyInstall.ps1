$ErrorActionPreference = 'Stop'

$packageName = 'dagger'
$url64       = 'https://github.com/dagger/dagger/releases/download/v0.2.9/dagger_v0.2.9_windows_amd64.zip'
$checksum64  = '0bbfa83ad6131aed5b3b7c943d5d8e9f2c003cfce6639363ff67279ecaa5b3e8'

$packageArgs = @{
  packageName    = $packageName
  url64          = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
