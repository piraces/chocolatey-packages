$ErrorActionPreference = 'Stop'

$packageName = 'gitleaks'
$url32       = 'https://github.com/gitleaks/gitleaks/releases/download/v8.27.2/gitleaks_8.27.2_windows_x32.zip'
$url64       = 'https://github.com/gitleaks/gitleaks/releases/download/v8.27.2/gitleaks_8.27.2_windows_x64.zip'
$checksum32  = 'f65d7bfdc0aa5e173dda4d35ffde17e4772854f5b933eb14fb57ca33d0c73913'
$checksum64  = '3c6a58efa70e991d7816a8bd87d1db797818017fcb67cbf1861394b404a70a42'

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
