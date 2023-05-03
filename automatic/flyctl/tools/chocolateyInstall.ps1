$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.0.552/flyctl_0.0.552_Windows_x86_64.zip'
$checksum64  = 'ccfa955e0d863d5dfcf7af7772d8a2a5dd42b4c201db441382d03ada77cd8a1c'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
