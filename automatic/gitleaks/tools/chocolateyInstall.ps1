$ErrorActionPreference = 'Stop'

$packageName = 'gitleaks'
$url32       = 'https://github.com/zricethezav/gitleaks/releases/download/v8.15.3/gitleaks_8.15.3_windows_x32.zip'
$url64       = 'https://github.com/zricethezav/gitleaks/releases/download/v8.15.3/gitleaks_8.15.3_windows_x64.zip'
$checksum32  = 'c5da062ab4226f2038338b214b3ff0db145266004887d227105ab3ee12c0c6da'
$checksum64  = '037883692db8635a93ed31043b5a7c5ed86c8da58f16800d922e39a2fad3be25'

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
