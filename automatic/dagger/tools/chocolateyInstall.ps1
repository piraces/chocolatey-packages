$ErrorActionPreference = 'Stop'

$packageName = 'dagger'
$url64       = 'https://github.com/dagger/dagger/releases/download/v0.2.19/dagger_v0.2.19_windows_amd64.zip'
$checksum64  = '9bcc8ba47b63f4768f6b7f1dc7d4277b5b662683b3587815a1ab849e19de7986'

$packageArgs = @{
  packageName    = $packageName
  url64          = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
