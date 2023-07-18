$ErrorActionPreference = 'Stop'

$packageName = 'aztfexport'
$url32       = 'https://github.com/Azure/aztfexport/releases/download/v0.13.1/aztfexport_v0.13.1_windows_386.zip'
$url64       = 'https://github.com/Azure/aztfexport/releases/download/v0.13.1/aztfexport_v0.13.1_windows_amd64.zip'
$checksum32  = 'e604e1e98135bc33f705f17346ab412bd30a42064f2e61060c77d01f9ad4da40'
$checksum64  = 'ef13e368633d8b3b3f02ab51d9a217aaa491a90a8843859c173bf7a8de0be087'

$packageArgs = @{
  packageName    = $packageName
  url            = $url32
  url64Bit       = $url64
  checksum       = $checksum32
  checksum64     = $checksum64
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
