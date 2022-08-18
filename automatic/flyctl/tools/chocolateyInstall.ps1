$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.0.375/flyctl_0.0.375_Windows_x86_64.zip'
$checksum64  = '134ecdc3f229f97f7c6c2e41c75539701daab7e6fc8daa2ac83303b5bf4ea121'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
