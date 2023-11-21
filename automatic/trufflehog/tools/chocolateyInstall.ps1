$ErrorActionPreference = 'Stop'

$packageName = 'trufflehog'
$url64       = 'https://github.com/trufflesecurity/trufflehog/releases/download/v3.63.2-rc0/trufflehog_3.63.2-rc0_windows_amd64.tar.gz'
$checksum64  = '9b65958967ff81a680e1273db69c5cfc4c39c2bdf515a9c869f471329653386a'

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
