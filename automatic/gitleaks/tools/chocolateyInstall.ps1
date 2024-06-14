$ErrorActionPreference = 'Stop'

$packageName = 'gitleaks'
$url32       = 'https://github.com/gitleaks/gitleaks/releases/download/v8.18.4/gitleaks_8.18.4_windows_x32.zip'
$url64       = 'https://github.com/gitleaks/gitleaks/releases/download/v8.18.4/gitleaks_8.18.4_windows_x64.zip'
$checksum32  = '338edd2932b583c13f4c3421a97b1611349f2a9a1c818e521abd3a3a6379d395'
$checksum64  = '9ba442ca7dda19885a2e569f43a127289feeb2b5fb0dfa251dafd277f4a0ba91'

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
