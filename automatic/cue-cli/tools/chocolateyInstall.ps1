$ErrorActionPreference = 'Stop'

$packageName = 'cue-cli'
$url64       = 'https://github.com/cue-lang/cue/releases/download/v0.17.0/cue_v0.17.0_windows_amd64.zip'
$checksum64  = '5ee7c2a1ad13b8ed7521b164532e48c8bc1618b500ac3c5808cbbd47d4c9ccb8'

$packageArgs = @{
  packageName    = $packageName
  url64          = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
