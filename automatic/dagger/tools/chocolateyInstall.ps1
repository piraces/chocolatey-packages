$ErrorActionPreference = 'Stop'

$packageName = 'dagger'
$url64       = 'https://github.com/dagger/dagger/releases/download/v0.2.14/dagger_v0.2.14_windows_amd64.zip'
$checksum64  = '7f5312cfc995ef54e14ffb5de8eb35c33132c4ba4e847b44cd82b68a4c191274'

$packageArgs = @{
  packageName    = $packageName
  url64          = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
