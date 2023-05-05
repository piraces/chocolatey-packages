$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.0.557/flyctl_0.0.557_Windows_x86_64.zip'
$checksum64  = 'a848efb0cd1e3f770110b0845d85fae49930e2a802b771f6c0393554024a3961'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
