$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.0.333-pre-1/flyctl_0.0.333-pre-1_Windows_x86_64.zip'
$checksum64  = '9a0eccf840ef5dfcd2758da44bbb3b50a6ff1f72a5f29fd6de5cd06cc2b33627'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
