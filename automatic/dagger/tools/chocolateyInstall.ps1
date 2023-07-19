$ErrorActionPreference = 'Stop'

$packageName = 'dagger'
$url64       = 'https://dagger-io.s3.amazonaws.com/dagger/releases/0.6.4/dagger_v0.6.4_windows_amd64.zip'
$checksum64  = '391e1cb15329e91ef810b7dc5225dd8e806b7a7d9af8fd2e9e5f8d7a647ca90d'

$packageArgs = @{
  packageName    = $packageName
  url64          = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
