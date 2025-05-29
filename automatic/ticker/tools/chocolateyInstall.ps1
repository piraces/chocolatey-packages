$ErrorActionPreference = 'Stop'

$packageName = 'ticker'
$url32       = 'https://github.com/achannarasappa/ticker/releases/download/v5.0.5/ticker-5.0.5-windows-386.tar.gz'
$url64       = 'https://github.com/achannarasappa/ticker/releases/download/v5.0.5/ticker-5.0.5-windows-amd64.tar.gz'
$checksum32  = 'c3ba5de89e3090043d4d4380ee3fc576b1ca5729915db7709d3d16ecb698ff32'
$checksum64  = '93ca7b10adb7c4e8d3ecb97a9319c895ba26414f1280361ba8fbf418f209fb93'

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
