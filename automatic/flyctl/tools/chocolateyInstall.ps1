$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.0.446/flyctl_0.0.446_Windows_x86_64.zip'
$checksum64  = 'b9c80e1ecf880ea213c5f7d4e5fb5a43f57d83b34cda6c280107bb6c74cc77e3'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
