$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.0.343/flyctl_0.0.343_Windows_x86_64.zip'
$checksum64  = '3970f3bdf96695d9ffad2ffc86ab813ebe1da36c6a4eeed2a5a9244218582916'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
