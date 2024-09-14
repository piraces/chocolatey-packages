$ErrorActionPreference = 'Stop'

$packageName = 'gitleaks'
$url32       = 'https://github.com/gitleaks/gitleaks/releases/download/v8.19.1/gitleaks_8.19.1_windows_x32.zip'
$url64       = 'https://github.com/gitleaks/gitleaks/releases/download/v8.19.1/gitleaks_8.19.1_windows_x64.zip'
$checksum32  = '68282c700eb4690e60dd7a4371f689c2ce96433e9784e7084fb26e43ed89b591'
$checksum64  = '178b29571502c930c64ec94e6a1af5f51efa7f42fc1bdbdb31db37092015e1aa'

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
