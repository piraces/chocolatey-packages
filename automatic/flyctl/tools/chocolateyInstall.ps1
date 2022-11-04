$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.0.429/flyctl_0.0.429_Windows_x86_64.zip'
$checksum64  = '02b222039886a0fdf8eb1cf96dbc773b237d5735ceaf29685620a9b7a9bd19a6'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
