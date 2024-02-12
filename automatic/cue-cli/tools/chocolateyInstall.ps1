$ErrorActionPreference = 'Stop'

$packageName = 'cue-cli'
$url64       = 'https://github.com/cue-lang/cue/releases/download/v0.7.1/cue_v0.7.1_windows_amd64.zip'
$checksum64  = '54d2a7f64985bb5f4bdbff8796ee9f290ba7c86ba1d8b98822373d01ebfae19a'

$packageArgs = @{
  packageName    = $packageName
  url64          = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
