$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.0.469/flyctl_0.0.469_Windows_x86_64.zip'
$checksum64  = 'a595ac7b06aec58f3cb993942f88828856f08319c155b9d32367d683a0306aa1'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
