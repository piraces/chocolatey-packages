$ErrorActionPreference = 'Stop'

$packageName = 'dagger'
$url64       = ''
$checksum64  = ''

$packageArgs = @{
  packageName    = $packageName
  url            = $url64
  checksum       = $checksum64
  checksumType   = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
