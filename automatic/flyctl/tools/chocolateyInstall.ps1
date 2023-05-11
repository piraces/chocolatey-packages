$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.1.2/flyctl_0.1.2_Windows_x86_64.zip'
$checksum64  = '2a2f1abc1c1ee149f3e77fc8fb19eda367b0b565d80fd0d8c3038badcf7eb245'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
