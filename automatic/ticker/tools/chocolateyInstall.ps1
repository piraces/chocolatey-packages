$ErrorActionPreference = 'Stop'

$packageName = 'ticker'
$url32       = 'https://github.com/achannarasappa/ticker/releases/download/v5.0.2/ticker-5.0.2-windows-386.tar.gz'
$url64       = 'https://github.com/achannarasappa/ticker/releases/download/v5.0.2/ticker-5.0.2-windows-amd64.tar.gz'
$checksum32  = 'c6bb90a0a32297ad9b1ecd0db42638c18b29ff897d9e4ca14bd2ecfa2310fe92'
$checksum64  = 'e0abe3d7c984138207893736664a382b8a2d6b5d36ec2aa1ec7b988f0a05d354'

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
