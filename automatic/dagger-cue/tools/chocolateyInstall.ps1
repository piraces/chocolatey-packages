$ErrorActionPreference = 'Stop'

$packageName = 'dagger-cue'
$url64       = ''
$checksum64  = ''

$packageArgs = @{
  packageName    = $packageName
  url64          = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
