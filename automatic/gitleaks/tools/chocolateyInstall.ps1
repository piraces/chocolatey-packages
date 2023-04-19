$ErrorActionPreference = 'Stop'

$packageName = 'gitleaks'
$url32       = 'https://github.com/gitleaks/gitleaks/releases/download/v8.16.3/gitleaks_8.16.3_windows_x32.zip'
$url64       = 'https://github.com/gitleaks/gitleaks/releases/download/v8.16.3/gitleaks_8.16.3_windows_x64.zip'
$checksum32  = '7d847d03ad6be34c7f33e4ecb00fc2607e556f6b7f2a6f7b1c589ef6cf314dc1'
$checksum64  = '7209433451424289201669f09a80ddd44f52bc8f7a5f02f85e579f83c0fed086'

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
