$ErrorActionPreference = 'Stop'

$packageName = 'ticker'
$url32       = 'https://github.com/achannarasappa/ticker/releases/download/v4.2.0/ticker-4.2.0-windows-386.tar.gz'
$url64       = 'https://github.com/achannarasappa/ticker/releases/download/v4.2.0/ticker-4.2.0-windows-amd64.tar.gz'
$checksum32  = '3e633cb819f41b6a6ce5a0d5648e3a933d0f67f3cd8c6da250a0bb1da6de14a0'
$checksum64  = '8f887e405d86fa67cc11b23ef2f10c5132ef4f8c797aa164f05398d7924096fa'

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
