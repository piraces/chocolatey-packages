$ErrorActionPreference = 'Stop'

$packageName = 'aztfy'
$url32       = 'https://github.com/Azure/aztfy/releases/download/v0.3.0/aztfy_v0.3.0_windows_386.zip'
$url64       = 'https://github.com/Azure/aztfy/releases/download/v0.3.0/aztfy_v0.3.0_windows_amd64.zip'
$checksum32  = '2668ac94314c9c3591442e25ff789d066711522d20a5f35862f8d46b347c2f9a'
$checksum64  = 'ca780d094cbe2d84cf5cdf7cb6cf263c34759445d05147095d3704b883873f3f'

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
