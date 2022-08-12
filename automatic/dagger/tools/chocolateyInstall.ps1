$ErrorActionPreference = 'Stop'

$packageName = 'dagger'
$url64       = 'https://github.com/dagger/dagger/releases/download/v0.2.29/dagger_v0.2.29_windows_amd64.zip'
$checksum64  = 'e11d102fa937446379fad7b9b878499f3d66d9bf1e77a6ba918f5e5fd29186c8'

$packageArgs = @{
  packageName    = $packageName
  url64          = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
