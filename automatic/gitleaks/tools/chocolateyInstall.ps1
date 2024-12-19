$ErrorActionPreference = 'Stop'

$packageName = 'gitleaks'
$url32       = 'https://github.com/gitleaks/gitleaks/releases/download/v8.21.3/gitleaks_8.21.3_windows_x32.zip'
$url64       = 'https://github.com/gitleaks/gitleaks/releases/download/v8.21.3/gitleaks_8.21.3_windows_x64.zip'
$checksum32  = '5f3549a568cd8b7d3c26516aea6b3d4b7d54adbdf7c212a6db46ce8397c0bfad'
$checksum64  = 'aa076106e99e892b43b6056cd23e193f282d0ed3b9d32a044de15222e2b06591'

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
