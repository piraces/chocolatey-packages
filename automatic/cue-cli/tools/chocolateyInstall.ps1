$ErrorActionPreference = 'Stop'

$packageName = 'cue-cli'
$url64       = 'https://github.com/cue-lang/cue/releases/download/v0.12.1/cue_v0.12.1_windows_amd64.zip'
$checksum64  = 'a80b570bd5d2d7d7e653f3c8689b37a7396a98d486901a14954f1ef6a83bd275'

$packageArgs = @{
  packageName    = $packageName
  url64          = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
