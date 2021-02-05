$ErrorActionPreference = 'Stop'

$packageName = 'bicep'
$url         = 'https://github.com/Azure/bicep/releases/download/v0.2.328/bicep-win-x64.exe'
$checksum    = ''

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $packageName
  url            = $url
  checksum       = $checksum64
  checksumType   = 'sha256'
  fileFullPath   = "$toolsDir\bicep.exe"
}

Get-ChocolateyWebFile @packageArgs
Install-BinFile -Name $packageName -Path $packageArgs.fileFullPath
