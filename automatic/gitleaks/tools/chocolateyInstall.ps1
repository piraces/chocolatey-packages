$ErrorActionPreference = 'Stop'

$packageName = 'gitleaks'
$url32       = 'https://github.com/zricethezav/gitleaks/releases/download/v8.15.4/gitleaks_8.15.4_windows_x32.zip'
$url64       = 'https://github.com/zricethezav/gitleaks/releases/download/v8.15.4/gitleaks_8.15.4_windows_x64.zip'
$checksum32  = '9c2f45fd2c3da16467a6d1e28a521864e89b7e4d06c4f11ab5af75aa8d657f79'
$checksum64  = 'a26ca0fbb52d0c1a618a5e8accad458abb888b825afff8f9644f22803c4df2a8'

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
