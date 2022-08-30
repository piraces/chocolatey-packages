$ErrorActionPreference = 'Stop'

$packageName = 'dagger'
$url64       = 'https://github.com/dagger/dagger/releases/download/v0.2.32/dagger_v0.2.32_windows_amd64.zip'
$checksum64  = 'c8d3027a7219c2cf28590a2228352f6498d27f4e240d93946fa5ddae3c84f9cf'

$packageArgs = @{
  packageName    = $packageName
  url64          = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
