$ErrorActionPreference = 'Stop'

$packageName = 'wayback'
$url32       = ''
$url64       = ''
$checksum32  = ''
$checksum64  = ''

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
