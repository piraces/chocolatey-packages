$ErrorActionPreference = 'Stop'

$packageName = 'gitleaks'
$url32       = 'https://github.com/gitleaks/gitleaks/releases/download/v8.19.0/gitleaks_8.19.0_windows_x32.zip'
$url64       = 'https://github.com/gitleaks/gitleaks/releases/download/v8.19.0/gitleaks_8.19.0_windows_x64.zip'
$checksum32  = '70af6a0418fcae9ac581c3cf84d9c2a9aac9a27218bbfa42b8b8563773be4fe7'
$checksum64  = 'a6a35a24a802e3093c631a7342390ef52e7965acbf969bf342b1fd6777cf35ff'

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
