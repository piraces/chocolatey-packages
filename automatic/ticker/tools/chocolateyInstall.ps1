$ErrorActionPreference = 'Stop'

$packageName = 'ticker'
$url32       = 'https://github.com/achannarasappa/ticker/releases/download/v4.0.2/ticker-4.0.2-windows-386.tar.gz'
$url64       = 'https://github.com/achannarasappa/ticker/releases/download/v4.0.2/ticker-4.0.2-windows-amd64.tar.gz'
$checksum32  = '5136d1aaa652bd4cf95d0e42b80606acc9c17a6484477aef6387cf3e49cdc00f'
$checksum64  = 'e8135b8068b49cba7088f91b364fb8590734bf3c5498346a6c2019ff42f2c576'

$toolsDir = (Split-Path -parent $MyInvocation.MyCommand.Definition)

$packageArgs = @{
  packageName    = $packageName
  url            = $url32
  url64Bit       = $url64
  checksum       = $checksum32
  checksum64     = $checksum64
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation   = "$toolsDir\ticker.tar"
}



Install-ChocolateyZipPackage @packageArgs

Get-ChocolateyUnzip -FileFullPath "$toolsDir\ticker.tar" -Destination $toolsDir
