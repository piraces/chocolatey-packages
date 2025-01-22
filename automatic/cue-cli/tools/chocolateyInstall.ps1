$ErrorActionPreference = 'Stop'

$packageName = 'cue-cli'
$url64       = 'https://github.com/cue-lang/cue/releases/download/v0.11.2/cue_v0.11.2_windows_amd64.zip'
$checksum64  = '6ed58000562d070282dd060a48f059d152c99b50b80eb602af1b986b8e6f01b6'

$packageArgs = @{
  packageName    = $packageName
  url64          = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
