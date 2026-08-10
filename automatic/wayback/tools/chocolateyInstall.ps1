$ErrorActionPreference = 'Stop'

$packageName = 'wayback'
$url32       = 'https://github.com/wabarc/wayback/releases/download/v0.21.1/wayback-windows-386-0.21.1.zip'
$url64       = 'https://github.com/wabarc/wayback/releases/download/v0.21.1/wayback-windows-amd64-0.21.1.zip'
$checksum32  = '862d7f81b6f4865ef9f750bce72c6d288e52715c4b1d58c9f392398b569cb32f'
$checksum64  = '80c5b353d8fc180d725d76a44758ad6c3fa6dc381c2bd56b0e21ce785b9f15e2'

$unzipLocation = (Split-Path $MyInvocation.MyCommand.Definition)

$packageArgs = @{
  packageName    = $packageName
  url            = $url32
  url64Bit       = $url64
  checksum       = $checksum32
  checksum64     = $checksum64
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $unzipLocation
}

Install-ChocolateyZipPackage @packageArgs

Get-ChildItem -Path $unzipLocation -Filter "wayback*" | ForEach-Object { Rename-Item $_.FullName -NewName "wayback.exe" }
