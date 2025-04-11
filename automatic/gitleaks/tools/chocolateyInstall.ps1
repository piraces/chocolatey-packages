$ErrorActionPreference = 'Stop'

$packageName = 'gitleaks'
$url32       = 'https://github.com/gitleaks/gitleaks/releases/download/v8.24.3/gitleaks_8.24.3_windows_x32.zip'
$url64       = 'https://github.com/gitleaks/gitleaks/releases/download/v8.24.3/gitleaks_8.24.3_windows_x64.zip'
$checksum32  = 'aeadfee7feeedc061a9789a84b05995bf1755723f2d1027756d4ee78f56a0751'
$checksum64  = '3f1a35578631dbfe633cc5b49e6c906e55ff14a4bfd7336a10fb27fe33b6dcd2'

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
