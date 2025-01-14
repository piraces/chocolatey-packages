$ErrorActionPreference = 'Stop'

$packageName = 'dagger'
$url64       = 'https://dl.dagger.io/dagger/releases/0.15.2/dagger_v0.15.2_windows_amd64.zip'
$checksum64  = '2d8652dae0925d6dc9ba830d4f5c4dfe212c7b54ac881a5766c264e5852b4bc2'

$packageArgs = @{
  packageName    = $packageName
  url64          = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
