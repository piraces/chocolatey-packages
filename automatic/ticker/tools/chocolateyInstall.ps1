$ErrorActionPreference = 'Stop'

$packageName = 'ticker'
$url32       = 'https://github.com/achannarasappa/ticker/releases/download/v4.2.1/ticker-4.2.1-windows-386.tar.gz'
$url64       = 'https://github.com/achannarasappa/ticker/releases/download/v4.2.1/ticker-4.2.1-windows-amd64.tar.gz'
$checksum32  = '7c01f4513689a87ce34f74b31ea5cc43db8b198b8a47c62021ad0bcae5b6cf64'
$checksum64  = 'bf3bf84326382b584ab60e1418b1e8f0dc7bb66b0f3489b0b762b703ad300e89'

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
