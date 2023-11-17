$ErrorActionPreference = 'Stop'

$packageName = 'gitleaks'
$url32       = 'https://github.com/gitleaks/gitleaks/releases/download/v8.18.1/gitleaks_8.18.1_windows_x32.zip'
$url64       = 'https://github.com/gitleaks/gitleaks/releases/download/v8.18.1/gitleaks_8.18.1_windows_x64.zip'
$checksum32  = '8748ea6df9d70a0eec9771dd28c57f645046bb05cd9b3f3e9d420bac024a9a10'
$checksum64  = '1a7e60fe13ce6e509793574392ff851c8e8f176e778cd5a21970c6ce12726b70'

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
