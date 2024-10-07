$ErrorActionPreference = 'Stop'

$packageName = 'gitleaks'
$url32       = 'https://github.com/gitleaks/gitleaks/releases/download/v8.20.1/gitleaks_8.20.1_windows_x32.zip'
$url64       = 'https://github.com/gitleaks/gitleaks/releases/download/v8.20.1/gitleaks_8.20.1_windows_x64.zip'
$checksum32  = '60e63987faa626b38bf6292c7e51addc0b9691773e8b2f768f5cb46b4b3ca956'
$checksum64  = 'f23010173c6a0fa03cf8148d32a83e40417127e43fb54808fa27bf8aece20111'

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
