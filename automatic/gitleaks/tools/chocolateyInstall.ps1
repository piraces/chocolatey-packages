$ErrorActionPreference = 'Stop'

$packageName = 'gitleaks'
$url32       = 'https://github.com/gitleaks/gitleaks/releases/download/v8.21.2/gitleaks_8.21.2_windows_x32.zip'
$url64       = 'https://github.com/gitleaks/gitleaks/releases/download/v8.21.2/gitleaks_8.21.2_windows_x64.zip'
$checksum32  = '788261d2f92c57320c8bef727ba6277582cb17925252b740c785782ae6bf4a3f'
$checksum64  = 'f238c85e5f47e18fac779ce71ee11091cf70a0a8fb4415f165efba2800eef133'

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
