$ErrorActionPreference = 'Stop'

$packageName = 'ticker'
$url32       = 'https://github.com/achannarasappa/ticker/releases/download/4.0.6/ticker-4.0.6-windows-386.tar.gz'
$url64       = 'https://github.com/achannarasappa/ticker/releases/download/4.0.6/ticker-4.0.6-windows-amd64.tar.gz'
$checksum32  = 'cae1eeaa1e449459f897a973b410f62b6014c9441665614fa0721da56579fa17'
$checksum64  = '106bf7eba535e553212308c24c97583abba9c66381ff30b6d112eef0d1fb7f7f'

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
