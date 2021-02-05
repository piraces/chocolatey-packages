$ErrorActionPreference = 'Stop'

$packageName = 'bicep'
$url64       = 'https://github.com/htacg/tidy-html5/releases/download/5.2.0/tidy-5.2.0-win64.zip'
$checksum64  = 'DD9FD814CC44BC2FFA9B9E547B1A6CBB42B6BE7B9358542D3EE7F6E10B676423'

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $packageName
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  fileFullPath  = "$toolsDir\bicep.exe"
}

Get-ChocolateyWebFile @packageArgs
Install-BinFile -Name $packageName -Path $packageArgs.fileFullPath