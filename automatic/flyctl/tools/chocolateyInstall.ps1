$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.0.356-pre-1/flyctl_0.0.356-pre-1_Windows_x86_64.zip'
$checksum64  = 'ef5443dddb098337663626bb513c4be321e28fe0623648d8db58a2f18087916f'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
