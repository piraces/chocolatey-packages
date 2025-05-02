$ErrorActionPreference = 'Stop'

$packageName = 'trufflehog'
$url64       = 'https://github.com/trufflesecurity/trufflehog/releases/download/v3.88.27/trufflehog_3.88.27_windows_amd64.tar.gz'
$checksum64  = 'afe45dc50f35f413bb7fb2fa3ba606773412a43b29fd3f3d497049063d34e52e'

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
