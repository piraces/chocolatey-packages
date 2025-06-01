$ErrorActionPreference = 'Stop'

$packageName = 'gitleaks'
$url32       = 'https://github.com/gitleaks/gitleaks/releases/download/v8.27.0/gitleaks_8.27.0_windows_x32.zip'
$url64       = 'https://github.com/gitleaks/gitleaks/releases/download/v8.27.0/gitleaks_8.27.0_windows_x64.zip'
$checksum32  = 'daa10b8de7d72bc7e4adf2f617d349c4b2e58617deb237e73ff442061e54399f'
$checksum64  = '6aa60a1c0df77836191eaa25e93ced70d4a0493717939f274d45ec1e8a2e85a8'

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
