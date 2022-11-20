$ErrorActionPreference = 'Stop'

$packageName = 'gitleaks'
$url32       = 'https://github.com/zricethezav/gitleaks/releases/download/v8.15.1/gitleaks_8.15.1_windows_x32.zip'
$url64       = 'https://github.com/zricethezav/gitleaks/releases/download/v8.15.1/gitleaks_8.15.1_windows_x64.zip'
$checksum32  = 'a8461ac5de29c287349b587ed789f161a07bbcb2d67c3d581da6bdb7d1534558'
$checksum64  = '9ca5542e923303ec7203fbf054124ac289019381be0e3bc8b1ae77c32ed19437'

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
