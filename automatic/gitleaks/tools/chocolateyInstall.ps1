$ErrorActionPreference = 'Stop'

$packageName = 'gitleaks'
$url32       = 'https://github.com/gitleaks/gitleaks/releases/download/v8.26.0/gitleaks_8.26.0_windows_x32.zip'
$url64       = 'https://github.com/gitleaks/gitleaks/releases/download/v8.26.0/gitleaks_8.26.0_windows_x64.zip'
$checksum32  = '4e3900a56792a2b0aaed7b54bda6ac12f50288dbf16ec959f97ad16206eb150e'
$checksum64  = 'd35ade652cff6c0c3213526e65a5da32b1c0cb49589619e96edc70ca21aa34c4'

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
