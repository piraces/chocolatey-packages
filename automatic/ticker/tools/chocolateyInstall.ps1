$ErrorActionPreference = 'Stop'

$packageName = 'ticker'
$url32       = 'https://github.com/achannarasappa/ticker/releases/download/v4.5.12/ticker-4.5.12-windows-386.tar.gz'
$url64       = 'https://github.com/achannarasappa/ticker/releases/download/v4.5.12/ticker-4.5.12-windows-amd64.tar.gz'
$checksum32  = '28cc6108b2eb7d275266d388ad34a9055f284ecbe8a3d6a858a3139c3f1ad2ad'
$checksum64  = 'b3f0765f2be7021a912d9ef14c64d2178b3fe4fedf817a3955fab60a5301c645'

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
