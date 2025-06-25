$ErrorActionPreference = 'Stop'

$packageName = 'dagger'
$url64       = 'https://dl.dagger.io/dagger/releases/0.18.11/dagger_v0.18.11_windows_amd64.zip'
$checksum64  = 'cd168f05e945e208eaa81df8c912e7ca21687ad8e1a73933fe932fd392efad82'

$packageArgs = @{
  packageName    = $packageName
  url64          = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
