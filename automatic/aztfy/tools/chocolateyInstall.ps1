$ErrorActionPreference = 'Stop'

$packageName = 'aztfy'
$url32       = 'https://github.com/Azure/aztfy/releases/download/v0.9.0/aztfy_v0.9.0_windows_386.zip'
$url64       = 'https://github.com/Azure/aztfy/releases/download/v0.9.0/aztfy_v0.9.0_windows_amd64.zip'
$checksum32  = 'b40ab2510a355d5b8223f778dae857694a6c7e762f2daddc7b95010ef9cf9614'
$checksum64  = 'b67f542b61bd4dcf10a4b07867db7cec9f890b7f32e8a4a5ceaa9cc3efc09160'

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
