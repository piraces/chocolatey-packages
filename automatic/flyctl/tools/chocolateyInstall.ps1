$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.0.505/flyctl_0.0.505_Windows_x86_64.zip'
$checksum64  = 'cecc23b2b9da7b5a2146c97fb37166e26d0eea0106226b491d669a9723e5bbcf'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
