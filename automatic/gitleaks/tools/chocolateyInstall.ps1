$ErrorActionPreference = 'Stop'

$packageName = 'gitleaks'
$url32       = 'https://github.com/gitleaks/gitleaks/releases/download/v8.25.0/gitleaks_8.25.0_windows_x32.zip'
$url64       = 'https://github.com/gitleaks/gitleaks/releases/download/v8.25.0/gitleaks_8.25.0_windows_x64.zip'
$checksum32  = '90957650ac1528872463eee055bf003ba7f817db74531b06f0d59b9eac2c4d17'
$checksum64  = '6e8fef04b39b228cdc4644d961711a02e86cea1329c8f956339621cf97d9a530'

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
