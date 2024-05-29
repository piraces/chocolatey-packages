$ErrorActionPreference = 'Stop'

$FlyInstall = $env:FLYCTL_INSTALL
$BinDir = if ($FlyInstall) {
  "$FlyInstall\bin"
} else {
  "$Home\.fly\bin"
}

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.2.62/flyctl_0.2.62_Windows_x86_64.zip'
$checksum64  = '5f9eaef9c6e88a72ad4c24fa9722b973d93d6b86b56dc9247898e66af3f307b8'

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
