$ErrorActionPreference = 'Stop'

$packageName = 'ticker'
$url32       = 'https://github.com/achannarasappa/ticker/releases/download/v4.7.1/ticker-4.7.1-windows-386.tar.gz'
$url64       = 'https://github.com/achannarasappa/ticker/releases/download/v4.7.1/ticker-4.7.1-windows-amd64.tar.gz'
$checksum32  = '740a47a164b8d0bd55ffbb491e77dc1f4fd7b32a69e95d7fcc6db51a4a0e2fa6'
$checksum64  = 'ef192d2af2170291cc5fb27477d633707cbdf150f7cce8afd50375005412fbb5'

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
