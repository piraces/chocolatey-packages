$ErrorActionPreference = 'Stop'

$packageName = 'dagger'
$url64       = 'https://dagger-io.s3.amazonaws.com/dagger/releases/0.5.2/dagger_v0.5.2_windows_amd64.zip'
$checksum64  = 'ca93cbf1b4ae03aa369e1c2b34977c3bc53a28ad4499a6989bbdd9ed187f07ba'

$packageArgs = @{
  packageName    = $packageName
  url64          = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
