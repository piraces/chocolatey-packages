$ErrorActionPreference = 'Stop'

$packageName = 'gitleaks'
$url32       = 'https://github.com/gitleaks/gitleaks/releases/download/v8.19.2/gitleaks_8.19.2_windows_x32.zip'
$url64       = 'https://github.com/gitleaks/gitleaks/releases/download/v8.19.2/gitleaks_8.19.2_windows_x64.zip'
$checksum32  = '8744daf31f99ebf2cc69de27cfd804ad9a1ca6fffb8853c4cddfeb2626805c68'
$checksum64  = '4de36c582415a84e406ffa72242f793cc1b7acd6a1f85fdcc439a800665eec39'

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
