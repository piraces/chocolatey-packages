$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.0.523/flyctl_0.0.523_Windows_x86_64.zip'
$checksum64  = 'a2ceb9d95168d61c8089ef4f132a7fb5dbcf58299a6a055bd74fb7e1e94cd668'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
