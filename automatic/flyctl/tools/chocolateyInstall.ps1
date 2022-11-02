$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.0.427/flyctl_0.0.427_Windows_x86_64.zip'
$checksum64  = 'a8d0ba24ab0c37ffb63b8fa4fab85b8a040874c723e826df1c1c4322494e8082'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
