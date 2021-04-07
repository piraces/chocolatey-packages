$ErrorActionPreference = 'Stop'

$packageName = 'ticker'
$url32       = 'https://github.com/achannarasappa/ticker/releases/download/v4.1.1/ticker-4.1.1-windows-386.tar.gz'
$url64       = 'https://github.com/achannarasappa/ticker/releases/download/v4.1.1/ticker-4.1.1-windows-amd64.tar.gz'
$checksum32  = '4837dbb1eabe18eeca1946dcdd3921d187b01b155def3ecfac266ac79ec42e03'
$checksum64  = 'eb3c562c6fa755a1b5d60d5d1c54d7df90c7dc09bd5b5d50d1a8c1cf41c328c5'

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
