$ErrorActionPreference = 'Stop'

$packageName = 'dagger-cue'
$url64       = 'https://dagger-io.s3.amazonaws.com/dagger-cue/releases/0.2.232/dagger-cue_v0.2.232_windows_amd64.zip'
$checksum64  = '658b84bf9101c827826359bc4e6f8d7e1c9ff144b3e0224460a52337ffb954a0'

$packageArgs = @{
  packageName    = $packageName
  url64          = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
