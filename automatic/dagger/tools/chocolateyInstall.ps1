$ErrorActionPreference = 'Stop'

$packageName = 'dagger'
$url64       = 'https://dagger-io.s3.amazonaws.com/dagger/releases/0.6.2/dagger_v0.6.2_windows_amd64.zip'
$checksum64  = '085530615f2a8184b5071ef81e86211de4aaf1c8b1664570a2ca537170254081'

$packageArgs = @{
  packageName    = $packageName
  url64          = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
