$ErrorActionPreference = 'Stop'

$packageName = 'gitleaks'
$url32       = 'https://github.com/zricethezav/gitleaks/releases/download/v8.15.0/gitleaks_8.15.0_windows_x32.zip'
$url64       = 'https://github.com/zricethezav/gitleaks/releases/download/v8.15.0/gitleaks_8.15.0_windows_x64.zip'
$checksum32  = '13d1e278ba6c85a941772717786b65db2c3a765b2a7bafd3dbd83f7fb2bdd7a9'
$checksum64  = '9a5a574c29f494dc36d9ed8c8b0a92a0dc45cf1d0c8fa5fe6307be4424982c7f'

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
