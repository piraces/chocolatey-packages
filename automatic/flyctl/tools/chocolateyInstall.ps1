$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.0.363-pre-2/flyctl_0.0.363-pre-2_Windows_x86_64.zip'
$checksum64  = 'd9a17e81e591a45d8fbb1de496d66ea8d9ecdbc5990ca9c139f4de9c49536dce'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
