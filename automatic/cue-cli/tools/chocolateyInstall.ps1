$ErrorActionPreference = 'Stop'

$packageName = 'cue-cli'
$url64       = 'https://github.com/cue-lang/cue/releases/download/v0.13.1/cue_v0.13.1_windows_amd64.zip'
$checksum64  = '934f10f81e3fea059594029c84fd0ae49c4d746f463654daf4a06c10b0a369b0'

$packageArgs = @{
  packageName    = $packageName
  url64          = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
