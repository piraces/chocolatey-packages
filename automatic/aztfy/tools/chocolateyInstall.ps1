$ErrorActionPreference = 'Stop'

$packageName = 'aztfy'
$url32       = 'https://github.com/Azure/aztfy/releases/download/v0.5.0/aztfy_v0.5.0_windows_386.zip'
$url64       = 'https://github.com/Azure/aztfy/releases/download/v0.5.0/aztfy_v0.5.0_windows_amd64.zip'
$checksum32  = 'a86b2e2f091ba6272bb4d9fb2a6154a04f8d275d627ad9b7ff386201197364d8'
$checksum64  = '23cac3c684c9797651f0b93061c3860e67a8e948e1788c45f458749e905c6e6e'

$packageArgs = @{
  packageName    = $packageName
  url            = $url32
  url64Bit       = $url64
  checksum       = $checksum32
  checksum64     = $checksum64
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
