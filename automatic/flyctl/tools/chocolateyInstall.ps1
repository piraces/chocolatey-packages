$ErrorActionPreference = 'Stop'

$FlyInstall = $env:FLYCTL_INSTALL
$BinDir = if ($FlyInstall) {
  "$FlyInstall\bin"
} else {
  "$Home\.fly\bin"
}

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.1.103/flyctl_0.1.103_Windows_x86_64.zip'
$checksum64  = 'f4dd5d48b093b86b52c944f88940ebdd3e78ec77ca4635aa52e5c972e298068d'

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
