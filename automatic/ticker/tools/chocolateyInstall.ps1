$ErrorActionPreference = 'Stop'

$packageName = 'ticker'
$url32       = 'https://github.com/achannarasappa/ticker/releases/download/v4.4.4/ticker-4.4.4-windows-386.tar.gz'
$url64       = 'https://github.com/achannarasappa/ticker/releases/download/v4.4.4/ticker-4.4.4-windows-amd64.tar.gz'
$checksum32  = 'a2f993cf5f7e02e83a735df6d0203725545cbbadbd77f1e3cb0f2f19840de926'
$checksum64  = '5380e8aec9b31f7ed43d304c72ba6edab06fd01bab0cc2bd22b2dc14fb15ef67'

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
