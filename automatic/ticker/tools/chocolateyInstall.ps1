$ErrorActionPreference = 'Stop'

$packageName = 'ticker'
$url32       = 'https://github.com/achannarasappa/ticker/releases/download/v5.0.4/ticker-5.0.4-windows-386.tar.gz'
$url64       = 'https://github.com/achannarasappa/ticker/releases/download/v5.0.4/ticker-5.0.4-windows-amd64.tar.gz'
$checksum32  = '03b4f21d491b0d35164ec12781b1c35fc9b25b24f08c51ab02fbe9c6be290bb5'
$checksum64  = '9e41a4ec8b10974a43c84a67d1a5956f33a4e3bb95212d5369485e3cb8bc86dc'

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
