$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.0.357-pre-1/flyctl_0.0.357-pre-1_Windows_x86_64.zip'
$checksum64  = '3db77612af64ac15bfe1063f278d70ab916647a830fc0aa4700cc567922d250c'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
