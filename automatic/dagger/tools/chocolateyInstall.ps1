$ErrorActionPreference = 'Stop'

$packageName = 'dagger'
$url64       = 'https://dl.dagger.io/dagger/releases/0.12.2/dagger_v0.12.2_windows_amd64.zip'
$checksum64  = 'a03d2755def972563483b87bfbe5e6229dbb31a19605dd9308ec90361ffd3b17'

$packageArgs = @{
  packageName    = $packageName
  url64          = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
