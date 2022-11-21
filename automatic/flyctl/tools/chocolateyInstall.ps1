$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.0.434/flyctl_0.0.434_Windows_x86_64.zip'
$checksum64  = '15835df33f0dd72f7f513b3ab604a28e8011572beff5011172f6f481f7a83d81'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
