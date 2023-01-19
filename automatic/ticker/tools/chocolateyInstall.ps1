$ErrorActionPreference = 'Stop'

$packageName = 'ticker'
$url32       = 'https://github.com/achannarasappa/ticker/releases/download/v4.5.5/ticker-4.5.5-windows-386.tar.gz'
$url64       = 'https://github.com/achannarasappa/ticker/releases/download/v4.5.5/ticker-4.5.5-windows-amd64.tar.gz'
$checksum32  = 'e16795cfa5eeac4ce3c33225d4bdc6713cb53f20c202e5b042ce112c0c7df0c4'
$checksum64  = '27842a8a4bc0376fae79bf5cdf8196989ff5e6d11279a1d0b01b7b9e2df94e55'

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
