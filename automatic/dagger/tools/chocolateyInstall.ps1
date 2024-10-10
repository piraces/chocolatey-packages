$ErrorActionPreference = 'Stop'

$packageName = 'dagger'
$url64       = 'https://dl.dagger.io/dagger/releases/0.13.5/dagger_v0.13.5_windows_amd64.zip'
$checksum64  = '88f030d604c618f2b95eafd13c462d4e8ec9f289b610dee9df8f5debeafd59b8'

$packageArgs = @{
  packageName    = $packageName
  url64          = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
