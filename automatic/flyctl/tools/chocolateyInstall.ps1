$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.0.371-pre-2/flyctl_0.0.371-pre-2_Windows_x86_64.zip'
$checksum64  = '2f0babcf18e74434adccea4bde2f17a93a413fadd0b9b071ffa612edb87f9d64'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
