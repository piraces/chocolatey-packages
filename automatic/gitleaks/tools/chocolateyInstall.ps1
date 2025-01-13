$ErrorActionPreference = 'Stop'

$packageName = 'gitleaks'
$url32       = 'https://github.com/gitleaks/gitleaks/releases/download/v8.23.0/gitleaks_8.23.0_windows_x32.zip'
$url64       = 'https://github.com/gitleaks/gitleaks/releases/download/v8.23.0/gitleaks_8.23.0_windows_x64.zip'
$checksum32  = 'f26470f2f3027fd61f3f3af2353b8d7d058987765c215a7b6c3ae06b71532a2e'
$checksum64  = '89c8c8aa08a9050172d1b48616c96ce485cae2a23983429d7dce4b0ed82cdaef'

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
