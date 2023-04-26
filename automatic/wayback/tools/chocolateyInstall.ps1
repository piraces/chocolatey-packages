$ErrorActionPreference = 'Stop'

$packageName = 'wayback'
$url32       = 'https://github.com/wabarc/wayback/releases/download/v0.19.1/wayback-windows-386-0.19.1.zip'
$url64       = 'https://github.com/wabarc/wayback/releases/download/v0.19.1/wayback-windows-amd64-0.19.1.zip'
$checksum32  = 'de3a120a90e9b5fad8eab7dc06f3e24f01038e9bde837df9871c687888583fde'
$checksum64  = 'c03ceebc2bbaab17a12bc834e90e76ef3db615afffdb63b7451a701d60ace0f0'

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
