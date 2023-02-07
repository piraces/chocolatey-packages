$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.0.454/flyctl_0.0.454_Windows_x86_64.zip'
$checksum64  = 'da49aa3ff54c743bb62f83d08aa8eecbc6d45aa138042dc17cdfaf1e6a425ff5'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
