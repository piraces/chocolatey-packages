$ErrorActionPreference = 'Stop'

$packageName = 'trufflehog'
$url64       = 'https://github.com/trufflesecurity/trufflehog/releases/download/v3.26.0/trufflehog_3.26.0_windows_amd64.tar.gz'
$checksum64  = '02ae522888ea01b6aeea666a38d46f32ba926ac6f3e514a4d5c09c1194daf2e8'

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
