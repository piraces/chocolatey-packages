$ErrorActionPreference = 'Stop'

$packageName = 'dagger'
$url64       = 'https://dagger-io.s3.amazonaws.com/dagger/releases/0.3.13/dagger_v0.3.13_windows_amd64.zip'
$checksum64  = 'c3982ac436877304998036fadd44203448512359bcb41b381bb113061aa6c794'

$packageArgs = @{
  packageName    = $packageName
  url64          = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
