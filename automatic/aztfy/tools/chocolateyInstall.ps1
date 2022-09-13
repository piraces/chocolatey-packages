$ErrorActionPreference = 'Stop'

$packageName = 'aztfy'
$url32       = 'https://github.com/Azure/aztfy/releases/download/v0.7.0/aztfy_v0.7.0_windows_386.zip'
$url64       = 'https://github.com/Azure/aztfy/releases/download/v0.7.0/aztfy_v0.7.0_windows_amd64.zip'
$checksum32  = 'e3533361e9c23d835e8627367ce558dd77938b77b7be489f3208b42e764c5f67'
$checksum64  = '4a982a953aaee49780eeafabbb4904bea953b4781a4404888b4675c16c1f9d1f'

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
