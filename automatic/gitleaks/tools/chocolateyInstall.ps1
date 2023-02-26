$ErrorActionPreference = 'Stop'

$packageName = 'gitleaks'
$url32       = 'https://github.com/zricethezav/gitleaks/releases/download/v8.16.0/gitleaks_8.16.0_windows_x32.zip'
$url64       = 'https://github.com/zricethezav/gitleaks/releases/download/v8.16.0/gitleaks_8.16.0_windows_x64.zip'
$checksum32  = '8aaf48f07735ee71ebc6d2b67350837cacbb700c86c8140ad5ab71dbfe28e3a8'
$checksum64  = '8caff67902c47e2148db529d816d4ce09b7ec37f4cc891def77d0d2ed9f4b57d'

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
