$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.0.335-pre-3/flyctl_0.0.335-pre-3_Windows_x86_64.zip'
$checksum64  = '17bda90b02555564dd200fc3c3e2fd0e6672fd98fe5f0383f7e3177b64bceb92'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
