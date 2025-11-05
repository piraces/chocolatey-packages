$ErrorActionPreference = 'Stop'

$packageName = 'gitleaks'
$url32       = 'https://github.com/gitleaks/gitleaks/releases/download/v8.29.0/gitleaks_8.29.0_windows_x32.zip'
$url64       = 'https://github.com/gitleaks/gitleaks/releases/download/v8.29.0/gitleaks_8.29.0_windows_x64.zip'
$checksum32  = '4cf64834ba06dad931df27323efd7be92f98ad57b7c5cb51407314a63c10db0e'
$checksum64  = '262f6d6a41ba11892ece339ab866b21a02e4d029e16e8916a9b0b59292001fe7'

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
