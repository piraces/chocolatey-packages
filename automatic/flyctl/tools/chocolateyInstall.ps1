$ErrorActionPreference = 'Stop'

$FlyInstall = $env:FLYCTL_INSTALL
$BinDir = if ($FlyInstall) {
  "$FlyInstall\bin"
} else {
  "$Home\.fly\bin"
}

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.1.72/flyctl_0.1.72_Windows_x86_64.zip'
$checksum64  = '922d1a91ef98a62a655c86cb2cc13cb52d5449e847825c6d13865c6b04ba8d7d'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $BinDir
}
Install-ChocolateyZipPackage @packageArgs
Install-ChocolateyPath -PathToInstall "$(Split-Path $BinDir)"
