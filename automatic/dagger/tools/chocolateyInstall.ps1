$ErrorActionPreference = 'Stop'

$packageName = 'dagger'
$url64       = 'https://dagger-io.s3.amazonaws.com/dagger/releases/0.9.2/dagger_v0.9.2_windows_amd64.zip'
$checksum64  = 'b60484abdaf044c1856215a7a2ba67f4fa1fc1615511d15beec15e7d1e316ec9'

$packageArgs = @{
  packageName    = $packageName
  url64          = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
