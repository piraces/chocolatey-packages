$ErrorActionPreference = 'Stop'

$packageName = 'gitleaks'
$url32       = 'https://github.com/gitleaks/gitleaks/releases/download/v8.28.0/gitleaks_8.28.0_windows_x32.zip'
$url64       = 'https://github.com/gitleaks/gitleaks/releases/download/v8.28.0/gitleaks_8.28.0_windows_x64.zip'
$checksum32  = 'e5c53b231d43da0d29c22c719dbcc753891fd2b600ca27506b322669cd3bc400'
$checksum64  = 'da6458e8864af553807de1c46a7a8eac0880bd6b99ba56288e87e86a45af884f'

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
