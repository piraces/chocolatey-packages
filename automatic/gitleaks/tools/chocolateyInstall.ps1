$ErrorActionPreference = 'Stop'

$packageName = 'gitleaks'
$url32       = 'https://github.com/zricethezav/gitleaks/releases/download/v8.15.2/gitleaks_8.15.2_windows_x32.zip'
$url64       = 'https://github.com/zricethezav/gitleaks/releases/download/v8.15.2/gitleaks_8.15.2_windows_x64.zip'
$checksum32  = '1de703eabb3db05e49854588bdf790d21ee1b53ddbca2b1493939e62ba94f36e'
$checksum64  = '7355dbdcb752ca34aec97000068b0c1b6c1084721bd0723e045fd2b5ac04b27d'

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
