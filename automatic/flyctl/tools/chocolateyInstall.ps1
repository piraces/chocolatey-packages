$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.0.360/flyctl_0.0.360_Windows_x86_64.zip'
$checksum64  = '02171fc46f77a747a17365d3069be9c9bedcc01dab6701f0662f1e307cec6326'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
