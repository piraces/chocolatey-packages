$ErrorActionPreference = 'Stop'

$packageName = 'trufflehog'
$url64       = 'https://github.com/trufflesecurity/trufflehog/releases/download/v3.25.0/trufflehog_3.25.0_windows_amd64.tar.gz'
$checksum64  = 'b4586b032d407a55a1404d384a1667d86cfc82eed473f966a7f713c86e0610c6'

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
