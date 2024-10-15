$ErrorActionPreference = 'Stop'

$packageName = 'gitleaks'
$url32       = 'https://github.com/gitleaks/gitleaks/releases/download/v8.21.0/gitleaks_8.21.0_windows_x32.zip'
$url64       = 'https://github.com/gitleaks/gitleaks/releases/download/v8.21.0/gitleaks_8.21.0_windows_x64.zip'
$checksum32  = '749a2380e95bec9d7b5b2957fe2fcea89ccf7e047e0b1b8d9e59ebfc381f1723'
$checksum64  = '3f8ad5782965ae1e8a1af4090af3263a90425e9124b770160800c44cd7d62cbb'

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
