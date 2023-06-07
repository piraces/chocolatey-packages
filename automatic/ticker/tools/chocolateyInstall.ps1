$ErrorActionPreference = 'Stop'

$packageName = 'ticker'
$url32       = 'https://github.com/achannarasappa/ticker/releases/download/v4.5.14/ticker-4.5.14-windows-386.tar.gz'
$url64       = 'https://github.com/achannarasappa/ticker/releases/download/v4.5.14/ticker-4.5.14-windows-amd64.tar.gz'
$checksum32  = 'b89c12d4b39a0df33230aa15b001cc92ed7cadcf456c94267105d445e0c43fce'
$checksum64  = 'e79fb8e7ebd6c12e409c1bd1fcf9cb6e684bc959e4b6c1ed84efdd88f8d35190'

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
