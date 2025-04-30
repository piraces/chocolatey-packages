$ErrorActionPreference = 'Stop'

$packageName = 'gitleaks'
$url32       = 'https://github.com/gitleaks/gitleaks/releases/download/v8.25.1/gitleaks_8.25.1_windows_x32.zip'
$url64       = 'https://github.com/gitleaks/gitleaks/releases/download/v8.25.1/gitleaks_8.25.1_windows_x64.zip'
$checksum32  = 'a03903c7a6b4737bc7ecb260833d94ff918b20f19e01543f672ab40796ebdf3d'
$checksum64  = 'f4d19d8db71a7c88876608a579483f1375b08ca863dad5dc040de0c575b276e1'

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
