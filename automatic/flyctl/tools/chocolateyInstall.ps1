$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.0.385-pre-1/flyctl_0.0.385-pre-1_Windows_x86_64.zip'
$checksum64  = 'e072b6a0ed64f97dcde8803a4a88d1b2186b707203ea368fafb93632f106a1e1'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
