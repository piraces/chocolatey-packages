$ErrorActionPreference = 'Stop'

$packageName = 'cue-cli'
$url64       = 'https://github.com/cue-lang/cue/releases/download/v0.15.3/cue_v0.15.3_windows_amd64.zip'
$checksum64  = 'd291bd510887bf1308a6bc07c28d17c7f01bc75e7a885adacdbd30d6d6ecbd20'

$packageArgs = @{
  packageName    = $packageName
  url64          = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
