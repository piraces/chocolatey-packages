$ErrorActionPreference = 'Stop'

$packageName = 'gitleaks'
$url32       = 'https://github.com/gitleaks/gitleaks/releases/download/v8.21.1/gitleaks_8.21.1_windows_x32.zip'
$url64       = 'https://github.com/gitleaks/gitleaks/releases/download/v8.21.1/gitleaks_8.21.1_windows_x64.zip'
$checksum32  = '642d39ae7e400699c85217e77f76d902b54a345f68dbf59c043132f3bbdc556e'
$checksum64  = 'e379528885e36ed1479c3d03f1cd879e3a53f0cb6c80a1e367122a871b71151c'

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
