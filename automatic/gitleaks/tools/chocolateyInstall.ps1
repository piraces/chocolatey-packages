$ErrorActionPreference = 'Stop'

$packageName = 'gitleaks'
$url32       = 'https://github.com/gitleaks/gitleaks/releases/download/v8.19.3/gitleaks_8.19.3_windows_x32.zip'
$url64       = 'https://github.com/gitleaks/gitleaks/releases/download/v8.19.3/gitleaks_8.19.3_windows_x64.zip'
$checksum32  = '8013a4782a9cce3d054b3b021f3c19e812ccbb58f463fb2e2fd7f3f15f7bda75'
$checksum64  = '2bd827a17bdb282f812f5c3b2e58760ee9974a990950f0300ae95e818a7a1669'

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
