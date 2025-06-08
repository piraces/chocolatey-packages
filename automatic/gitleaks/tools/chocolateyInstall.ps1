$ErrorActionPreference = 'Stop'

$packageName = 'gitleaks'
$url32       = 'https://github.com/gitleaks/gitleaks/releases/download/v8.27.1/gitleaks_8.27.1_windows_x32.zip'
$url64       = 'https://github.com/gitleaks/gitleaks/releases/download/v8.27.1/gitleaks_8.27.1_windows_x64.zip'
$checksum32  = '5b0485b8617a7d8eef7736aeb4b0dad3033b9df45dbb70f708537a039836f06b'
$checksum64  = '7a6f3aa2fa533e4511aa0555b6794558f8024e432c64b047b01f17558722bbd4'

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
