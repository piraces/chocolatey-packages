$ErrorActionPreference = 'Stop'

$packageName = 'dagger'
$url64       = 'https://dagger-io.s3.amazonaws.com/dagger/releases/0.4.1/dagger_v0.4.1_windows_amd64.zip'
$checksum64  = 'cc2d4a519346053b94c1aa801b7c3c541f7705c0163f8dbdc6f9b4fb524e59ad'

$packageArgs = @{
  packageName    = $packageName
  url64          = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
