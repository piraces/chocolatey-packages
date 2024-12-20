$ErrorActionPreference = 'Stop'

$packageName = 'gitleaks'
$url32       = 'https://github.com/gitleaks/gitleaks/releases/download/v8.21.4/gitleaks_8.21.4_windows_x32.zip'
$url64       = 'https://github.com/gitleaks/gitleaks/releases/download/v8.21.4/gitleaks_8.21.4_windows_x64.zip'
$checksum32  = 'f26d3ef2417e5189669bd88f4e67b18a921f00f4d24d42bc440e26f6cfba538d'
$checksum64  = '8aef1cbc9b07e5382efd80cf22614ea3d3aeac261df0a6de407add099350e374'

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
