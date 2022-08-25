$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.0.382/flyctl_0.0.382_Windows_x86_64.zip'
$checksum64  = '4eeab47de0bffb9adbc54a431a1f06922ddd391a12cefc9a1f9ca5278e4e11de'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
