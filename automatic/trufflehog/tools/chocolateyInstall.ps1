$ErrorActionPreference = 'Stop'

$packageName = 'trufflehog'
$url64       = 'https://github.com/trufflesecurity/trufflehog/releases/download/v3.87.2/trufflehog_3.87.2_windows_amd64.tar.gz'
$checksum64  = '301e8826d131a0cb0ec5991ab183a09d219e17c5ae47944f16da818def4fb91e'

$toolsDir = (Split-Path -parent $MyInvocation.MyCommand.Definition)

$packageArgs = @{
  packageName    = $packageName
  url64          = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation   = "$toolsDir\trufflehog.tar"
}



Install-ChocolateyZipPackage @packageArgs

Get-ChocolateyUnzip -FileFullPath "$toolsDir\trufflehog.tar" -Destination $toolsDir
