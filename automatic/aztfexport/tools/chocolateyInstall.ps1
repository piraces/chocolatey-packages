$ErrorActionPreference = 'Stop'

$packageName = 'aztfexport'
$url32       = 'https://github.com/Azure/aztfexport/releases/download/v0.21.0/aztfexport_v0.21.0_windows_386.zip'
$url64       = 'https://github.com/Azure/aztfexport/releases/download/v0.21.0/aztfexport_v0.21.0_windows_amd64.zip'
$checksum32  = '0b8a9e782095ba57dff5c6f0607a942910b261c181488d62e7206925d4a47b4f'
$checksum64  = '81e08a53ca18a1e35a00da0e0209259cc2ad678bf61384e03dece7b908adc0e0'

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
