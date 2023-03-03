$ErrorActionPreference = 'Stop'

$packageName = 'aztfy'
$url32       = 'https://github.com/Azure/aztfy/releases/download/v0.10.0/aztfy_v0.10.0_windows_386.zip'
$url64       = 'https://github.com/Azure/aztfy/releases/download/v0.10.0/aztfy_v0.10.0_windows_amd64.zip'
$checksum32  = '2b870fce4c8fc9dc24b6389415d62f8b47f013249348c7c0ddfd3c59921c0a28'
$checksum64  = '8b945002741df3ff1a6e4be89fc13f77127484df186b985f8b95df1b4301978f'

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
