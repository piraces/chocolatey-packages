$ErrorActionPreference = 'Stop'

$packageName = 'gitleaks'
$url32       = 'https://github.com/gitleaks/gitleaks/releases/download/v8.22.0/gitleaks_8.22.0_windows_x32.zip'
$url64       = 'https://github.com/gitleaks/gitleaks/releases/download/v8.22.0/gitleaks_8.22.0_windows_x64.zip'
$checksum32  = '85a73e9888148a00a8f22c93a9c0079482c84aef3cec4b1593e19d4485ce0173'
$checksum64  = 'b488e255433c709c4feb67c8497024ddc2633bd7c94cadc30e4b64cf82ab7410'

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
