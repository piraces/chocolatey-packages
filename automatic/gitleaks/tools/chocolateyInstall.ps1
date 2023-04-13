$ErrorActionPreference = 'Stop'

$packageName = 'gitleaks'
$url32       = 'https://github.com/gitleaks/gitleaks/releases/download/v8.16.2/gitleaks_8.16.2_windows_x32.zip'
$url64       = 'https://github.com/gitleaks/gitleaks/releases/download/v8.16.2/gitleaks_8.16.2_windows_x64.zip'
$checksum32  = '1F2D85E9B008A571DD4EEEF0B67DCE30B6BAA98C459943CA29E0C84F855E5A96'
$checksum64  = 'C87F4A1D57F04D13DE4B68262EA0E65C83C7E5ADF736B681D7BA3BA5BC44C874'

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
