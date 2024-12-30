$ErrorActionPreference = 'Stop'

$packageName = 'gitleaks'
$url32       = 'https://github.com/gitleaks/gitleaks/releases/download/v8.22.1/gitleaks_8.22.1_windows_x32.zip'
$url64       = 'https://github.com/gitleaks/gitleaks/releases/download/v8.22.1/gitleaks_8.22.1_windows_x64.zip'
$checksum32  = '1b23a8c5cba0a398939fb70595ea700f81390ec9f9b07e691775e98384e86d53'
$checksum64  = '8e3c4f7a73d79240b7184849bacec7cedef1445d0b727ee7a2c078ec50dcc50d'

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
