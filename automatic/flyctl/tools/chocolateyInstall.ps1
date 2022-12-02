$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.0.437/flyctl_0.0.437_Windows_x86_64.zip'
$checksum64  = '9a87a9501ca93a3acf9a15e1e6330c620aca1fb2ef823cb53b89d7571a592e54'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
