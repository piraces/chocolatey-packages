$ErrorActionPreference = 'Stop'

$FlyInstall = $env:FLYCTL_INSTALL
$BinDir = if ($FlyInstall) {
  "$FlyInstall\bin"
} else {
  "$Home\.fly\bin"
}

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.3.216/flyctl_0.3.216_Windows_x86_64.zip'
$checksum64  = '15292a5fbde23100e7f90d11916d6b9fda042b3af200c4464efbd0fbf3f9abb2'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $BinDir
}

# Remove old versions of flyctl residing in default directory
Uninstall-BinFile $packageName

Install-ChocolateyZipPackage @packageArgs
Install-ChocolateyPath -PathToInstall "$(Split-Path $BinDir)"
