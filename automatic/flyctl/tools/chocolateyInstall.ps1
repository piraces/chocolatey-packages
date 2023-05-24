$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.1.13/flyctl_0.1.13_Windows_x86_64.zip'
$checksum64  = '9bca97582341ff252ebcfc6fa6961a4d0badb0dc8dcdcc5d54e4253fa1f5706f'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
