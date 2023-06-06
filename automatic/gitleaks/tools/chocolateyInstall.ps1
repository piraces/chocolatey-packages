$ErrorActionPreference = 'Stop'

$packageName = 'gitleaks'
$url32       = 'https://github.com/gitleaks/gitleaks/releases/download/v8.16.4/gitleaks_8.16.4_windows_x32.zip'
$url64       = 'https://github.com/gitleaks/gitleaks/releases/download/v8.16.4/gitleaks_8.16.4_windows_x64.zip'
$checksum32  = 'fb2a95d4ce70bd5bd91c8fb4919aa884fd0665938675b64e8a1f748ac0c61d51'
$checksum64  = '5a5ff00a72113525e8ce29b12c9d52548f72b0c6df5678ddde2b317e66ef6693'

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
