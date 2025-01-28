$ErrorActionPreference = 'Stop'

$packageName = 'aztfexport'
$url32       = 'https://github.com/Azure/aztfexport/releases/download/v0.16.0/aztfexport_v0.16.0_windows_386.zip'
$url64       = 'https://github.com/Azure/aztfexport/releases/download/v0.16.0/aztfexport_v0.16.0_windows_amd64.zip'
$checksum32  = 'ea3b376aba0631ee7fa7c8ef3051167bff825d52264f317e9cc07c2b2fa049aa'
$checksum64  = '4231396534e6c3e1c83ff0c30e0511c8dc1772d1e93d15f17263dffd351a5b95'

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
