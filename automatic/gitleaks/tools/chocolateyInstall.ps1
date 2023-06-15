$ErrorActionPreference = 'Stop'

$packageName = 'gitleaks'
$url32       = 'https://github.com/gitleaks/gitleaks/releases/download/v8.17.0/gitleaks_8.17.0_windows_x32.zip'
$url64       = 'https://github.com/gitleaks/gitleaks/releases/download/v8.17.0/gitleaks_8.17.0_windows_x64.zip'
$checksum32  = '3f78394175d1bd8d6c1277f3dfd2240442309adb0fe4c71dc96eef2781b24135'
$checksum64  = 'a10d327e7f766e509ab906e5d9aad454931bf1dae231b150ce77c4a02d4857b0'

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
