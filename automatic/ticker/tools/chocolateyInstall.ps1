$ErrorActionPreference = 'Stop'

$packageName = 'ticker'
$url32       = 'https://github.com/achannarasappa/ticker/releases/download/v4.5.10/ticker-4.5.10-windows-386.tar.gz'
$url64       = 'https://github.com/achannarasappa/ticker/releases/download/v4.5.10/ticker-4.5.10-windows-amd64.tar.gz'
$checksum32  = '99109ec8104e2283feee29aec35b0e93349b63cd9a3e7bbe66b539327f40e902'
$checksum64  = '2ee395a6fd7c02e783fdb814da712af51b92d24088de00fab544e187c1fa23ed'

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
