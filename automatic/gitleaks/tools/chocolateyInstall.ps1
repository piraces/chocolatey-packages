$ErrorActionPreference = 'Stop'

$packageName = 'gitleaks'
$url32       = 'https://github.com/gitleaks/gitleaks/releases/download/v8.23.2/gitleaks_8.23.2_windows_x32.zip'
$url64       = 'https://github.com/gitleaks/gitleaks/releases/download/v8.23.2/gitleaks_8.23.2_windows_x64.zip'
$checksum32  = '9f7a0add249d33e6fe1747c4ef9169c39557c84fda03d9054b5e1e8418ffd1a5'
$checksum64  = '422fd9c15ceea397e45a11df09f8b0420b79d72672d1ea30a2be19864b058e82'

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
