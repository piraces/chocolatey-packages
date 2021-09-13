$ErrorActionPreference = 'Stop'

$packageName = 'ticker'
$url32       = 'https://github.com/achannarasappa/ticker/releases/download/v4.3.0/ticker-4.3.0-windows-386.tar.gz'
$url64       = 'https://github.com/achannarasappa/ticker/releases/download/v4.3.0/ticker-4.3.0-windows-amd64.tar.gz'
$checksum32  = '53162fb50f901a95d99c9c5a9ee4bc78643e5a5054e6fa24721f6e546ec40abb'
$checksum64  = 'f743d055b36f859258e464042583eb197fa6bbd0778cc03bd6e7dcf1adaa97d9'

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
