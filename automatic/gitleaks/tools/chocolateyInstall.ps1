$ErrorActionPreference = 'Stop'

$packageName = 'gitleaks'
$url32       = 'https://github.com/gitleaks/gitleaks/releases/download/v8.16.2/gitleaks_8.16.2_windows_x32.zip'
$url64       = 'https://github.com/gitleaks/gitleaks/releases/download/v8.16.2/gitleaks_8.16.2_windows_x64.zip'
$checksum32  = '1f2d85e9b008a571dd4eeef0b67dce30b6baa98c459943ca29e0c84f855e5a96'
$checksum64  = 'c87f4a1d57f04d13de4b68262ea0e65c83c7e5adf736b681d7ba3ba5bc44c874'

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
