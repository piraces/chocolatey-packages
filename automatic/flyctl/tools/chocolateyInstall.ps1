$ErrorActionPreference = 'Stop'

$packageName = 'flyctl'
$url64       = 'https://github.com/superfly/flyctl/releases/download/v0.0.373/flyctl_0.0.373_Windows_x86_64.zip'
$checksum64  = 'dbd927dbab15642a2b3024719ecd7ea9a95da3a57e0eead7b960c9f2b66b13d3'

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
