$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.0.441/flyctl_0.0.441_Windows_x86_64.zip'
$checksum64  = 'c593df4301b9e0af33a3d6c42c7473c8c6d599d6c41e3a8f414aa2aa7fc83b53'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
