$ErrorActionPreference = 'Stop'

$FlyInstall = $env:FLYCTL_INSTALL
$BinDir = if ($FlyInstall) {
  "$FlyInstall\bin"
} else {
  "$Home\.fly\bin"
}

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.3.7/flyctl_0.3.7_Windows_x86_64.zip'
$checksum64  = '0fc07524a2923328dc4e26a635f4cdfc4dc856be90a3ba33632b3675be68b3fa'

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
