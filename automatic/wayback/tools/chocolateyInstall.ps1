$ErrorActionPreference = 'Stop'

$packageName = 'wayback'
$url32       = 'https://github.com/wabarc/wayback/releases/download/v0.20.1/wayback-windows-386-0.20.1.zip'
$url64       = 'https://github.com/wabarc/wayback/releases/download/v0.20.1/wayback-windows-amd64-0.20.1.zip'
$checksum32  = '4ac4ad4d3a91666a3512e845838e47e618f1065fb5849e25f1607995c87d99d4'
$checksum64  = '28d814af1c60da2a2cbeed2ca85d61ffe861e59d0b58b4ab58d350b6fe854df6'

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
