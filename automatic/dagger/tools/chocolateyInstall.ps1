$ErrorActionPreference = 'Stop'

$packageName = 'dagger'
$url64       = 'https://github.com/dagger/dagger/releases/download/v0.2.26/dagger_v0.2.26_windows_amd64.zip'
$checksum64  = 'a28211d41662a1b0054e29f8df28e4c4ef31f9b827170ebe72f1f52ab8964c24'

$packageArgs = @{
  packageName    = $packageName
  url64          = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
