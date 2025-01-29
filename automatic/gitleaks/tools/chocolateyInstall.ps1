$ErrorActionPreference = 'Stop'

$packageName = 'gitleaks'
$url32       = 'https://github.com/gitleaks/gitleaks/releases/download/v8.23.3/gitleaks_8.23.3_windows_x32.zip'
$url64       = 'https://github.com/gitleaks/gitleaks/releases/download/v8.23.3/gitleaks_8.23.3_windows_x64.zip'
$checksum32  = 'e28c0db53e6be47308df0ca4eff2ed993af6a78c433c701c4cb94e9f9b294d41'
$checksum64  = '1538330ae504a20bd0ffd0837ac301eac137609993d65ce15f3f826e32fad115'

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
