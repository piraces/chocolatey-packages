$ErrorActionPreference = 'Stop'

$packageName = 'cue-cli'
$url64       = 'https://github.com/cue-lang/cue/releases/download/v0.6.0/cue_v0.6.0_windows_amd64.zip'
$checksum64  = '69c32671349665ec4af9b8ab7a312e870b8318bf747041c0da2b8f505ce0e2e5'

$packageArgs = @{
  packageName    = $packageName
  url64          = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
