$ErrorActionPreference = 'Stop'

$packageName = 'cue-cli'
$url64       = 'https://github.com/cue-lang/cue/releases/download/v0.8.0/cue_v0.8.0_windows_amd64.zip'
$checksum64  = '8e3ced001982f10581dc1a6eeb82e08adee1b1e2abe5b7e837a35401895c6ba7'

$packageArgs = @{
  packageName    = $packageName
  url64          = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
