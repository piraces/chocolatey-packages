$ErrorActionPreference = 'Stop'

$packageName = 'ticker'
$url32       = 'https://github.com/achannarasappa/ticker/releases/download/v4.7.0/ticker-4.7.0-windows-386.tar.gz'
$url64       = 'https://github.com/achannarasappa/ticker/releases/download/v4.7.0/ticker-4.7.0-windows-amd64.tar.gz'
$checksum32  = '5bf464e54eae416d563531510e53d1dc187d4843c0e63f403a0f61838eac2310'
$checksum64  = 'bb89318a80341285a3e8730d77eb2e624e442f4f7f257ca9944fbc75f40f3f86'

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
