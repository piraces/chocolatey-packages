$ErrorActionPreference = 'Stop'

$packageName = 'gitleaks'
$url32       = 'https://github.com/gitleaks/gitleaks/releases/download/v8.18.3/gitleaks_8.18.3_windows_x32.zip'
$url64       = 'https://github.com/gitleaks/gitleaks/releases/download/v8.18.3/gitleaks_8.18.3_windows_x64.zip'
$checksum32  = '62e160b117f06d85b79bf024db49ef9dfc03d23e5323c721084def78e83933f7'
$checksum64  = 'b7d7b0d5df1f7629361b63a4b9e8d112ca0f5bad0968be9ddf32c55186add254'

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
