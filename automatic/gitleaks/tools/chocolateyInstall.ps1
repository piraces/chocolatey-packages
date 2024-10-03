$ErrorActionPreference = 'Stop'

$packageName = 'gitleaks'
$url32       = 'https://github.com/gitleaks/gitleaks/releases/download/v8.20.0/gitleaks_8.20.0_windows_x32.zip'
$url64       = 'https://github.com/gitleaks/gitleaks/releases/download/v8.20.0/gitleaks_8.20.0_windows_x64.zip'
$checksum32  = '96ef571c8bc194019984ea94432e7e23b4edec8eb7d6831c3614843df6423750'
$checksum64  = '15a00bab8758b60f8865e29db5dec153ce43858e6793e001cf8d1aac02c92714'

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
