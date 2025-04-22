$ErrorActionPreference = 'Stop'

$packageName = 'dagger'
$url64       = 'https://dl.dagger.io/dagger/releases/0.18.4/dagger_v0.18.4_windows_amd64.zip'
$checksum64  = 'e593fb66f1983b924b527aef5eda09e403d6cbcdab0e0c141cf41fa172410de0'

$packageArgs = @{
  packageName    = $packageName
  url64          = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
